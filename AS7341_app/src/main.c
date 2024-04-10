/*
*
*   main.c
*   Drivers and example code for the AS7341 11-Channel Multi-Spectral Digital Sensor using the I2C interface. This example is built around the Digilent
*   Arty S7-50 development board.
*   
*   Written: 4/8/2024
*   Author: Mike Dawson
*   michaelshanedawson@gmail.com
*
*   v1.0
*   See README.md for full changelog
*
*/

#include "xparameters.h"
#include "xil_printf.h"
#include "xgpio.h"
#include "xil_types.h"
#include "xiic.h"
#include <xiic_l.h>

/* GPIO Configuration Information */
#define PIN26_ID XPAR_XGPIO_0_BASEADDR
#define PIN26_CHANNEL 1
#define PIN26_MASK 0b0001

/* I2C Bus Configuration Information */
#define I2C_BUS_ID XPAR_XIIC_0_BASEADDR
#define I2C_BUS_ADDR 0x01 //The address of the I2C bus
#define AS7341_ADDR 0x39 //The address of the AS7341 device

/* Define global variables */
uint16_t lastReading = 0x00;

/* Define prototypes */
uint8_t i2c_read(uint8_t reg);
void i2c_write(uint8_t reg, uint8_t data);
void delay(uint32_t value);


/* Generic delay function that just idles time away */
void delay(uint32_t value)
{    
    value = value * 1000;
    for (uint32_t i=0; i<value; i++)
    {        
    }
    return;
}

void i2c_write(uint8_t reg, uint8_t data)
{
    if(reg >= 0x80)
    {
        uint8_t tempBuffer[2] = {0xA9, 0x00};
        XIic_Send(I2C_BUS_ID, AS7341_ADDR, tempBuffer, sizeof(tempBuffer), XIIC_STOP);      
    }

    else if(reg < 0x80)
    {
        uint8_t tempBuffer[2] = {0xA9, 0x10};
        XIic_Send(I2C_BUS_ID, AS7341_ADDR, tempBuffer, sizeof(tempBuffer), XIIC_STOP);       
    }

    uint8_t sendBuffer[2] = {reg, data};
    XIic_Send(I2C_BUS_ID, AS7341_ADDR, sendBuffer, sizeof(sendBuffer), XIIC_STOP);
}

uint8_t i2c_read(uint8_t reg)
{
    if(reg >= 0x80)
    {
        uint8_t tempBuffer[2] = {0xA9, 0x00};
        XIic_Send(I2C_BUS_ID, AS7341_ADDR, tempBuffer, sizeof(tempBuffer), XIIC_STOP);      
    }

    else if(reg < 0x80)
    {
        uint8_t tempBuffer[2] = {0xA9, 0x10};
        XIic_Send(I2C_BUS_ID, AS7341_ADDR, tempBuffer, sizeof(tempBuffer), XIIC_STOP);       
    }


    uint8_t sendBuffer[1] = {reg};
    uint8_t receiveBuffer[1] = {0x00};
    XIic_Send(I2C_BUS_ID, AS7341_ADDR, sendBuffer, sizeof(sendBuffer), XIIC_REPEATED_START);
    XIic_Recv(I2C_BUS_ID, AS7341_ADDR, receiveBuffer, sizeof(sendBuffer), XIIC_STOP);
    return (uint8_t)receiveBuffer[0];
}


int main()
{
    uint8_t status = 0x00;
    xil_printf("Entered function main\r\n");

    /* I2C Configuration */
    XIic_Config *i2c_cfg;
    XIic i2c_bus;

    i2c_cfg = XIic_LookupConfig(I2C_BUS_ID);
    status = XIic_CfgInitialize(&i2c_bus, i2c_cfg, I2C_BUS_ID);
    //xil_printf("I2C initialization status is: %u \n", status);

    status = XIic_Start(&i2c_bus);
    //xil_printf("I2C startup status is: %u \n", status);

    XIic_SetAddress(&i2c_bus, 7, I2C_BUS_ADDR);

    /* GPIO Configuration */
    XGpio_Config *gpio_cfg;
    XGpio PIN26;    

    gpio_cfg = XGpio_LookupConfig(PIN26_ID);
    XGpio_CfgInitialize(&PIN26, gpio_cfg, PIN26_ID);    
    XGpio_SetDataDirection(&PIN26, PIN26_CHANNEL, 0);
    XGpio_DiscreteWrite(&PIN26, PIN26_CHANNEL, PIN26_MASK);

    /* Start the main interfacing to the device */
    uint8_t dataIn = 0x00;
    uint8_t dataOut = 0x00;

    /* Probe for the device ID to test connection. Should return an integer of 39 */
    //dataIn = i2c_read(0x92);
    //xil_printf("The device ID is: %u \n", dataIn);

    /* Enable and configure register, 0x80 */
    dataOut = 0x00 | 1 << 0;
    i2c_write(0x80, dataOut);

    dataIn = i2c_read(0x80);
    xil_printf("The ENABLE Register is: %u \n", dataIn);

    /* CONFIG register, 0x70. */
    dataOut = 0x00 | 1 << 3; //Tie the LED control to the LDR pin
    i2c_write(0x70, dataOut);

    dataIn = i2c_read(0x70);
    xil_printf("The CONFIG Register is: %u \n", dataIn);

    /* LED register, 0x74. This controls the LED tied to the LDR pin. */
    dataOut = 0x00 | 0 << 7 | 0x4; //Setting bit poistion 7 to 1 will turn the LED on with a drive strength of 12mA
    i2c_write(0x74, dataOut);

    dataIn = i2c_read(0x74);
    xil_printf("The LED Register is: %u \n", dataIn);

    /* ATIME register, 0x81. This is part of the configuration of the ADC timing. */
    dataOut = 0x00 | 0x1D; // Sets ATIME to 29
    i2c_write(0x81, dataOut);

    dataIn = i2c_read(0x81);
    xil_printf("The ATIME Register is: %u \n", dataIn);

    /* ASTEP, this is two 8bit registers equating to a 16bit value. 0xCA is bits 7:0 and 0xCB is bits 15:8 */
    uint16_t stepSize = 599; //This is the recommended step size

    dataOut = 0x00 | (stepSize & 0x00FF); //We will handle the lower 8 bits first
    i2c_write(0xCA, dataOut);

    dataIn = i2c_read(0xCA);
    xil_printf("The ASTEP Lower Register is: %u \n", dataIn); 

    dataOut = 0x00 | (uint8_t)(stepSize >> 8); //Here we will handle the upper 8 bits
    i2c_write(0xCB, dataOut);

    dataIn = i2c_read(0xCB);
    xil_printf("The ASTEP Upper Register is: %u \n", dataIn);

    /* WTIME register, 0x83. Handles the wait time between measurements*/
    dataOut = 0x1; //Selecting 5.56mS
    i2c_write(0x83, dataOut);

    dataIn = i2c_read(0x83);
    xil_printf("The WTIME Register is: %u \n", dataIn);

    /* Now we will enable measurements of the device */
    dataOut = 0x00 | 1 << 3 | 1 << 1 | 1; //Enables the device for measurements
    i2c_write(0x80, dataOut); //Sends the configuration data

    dataIn = i2c_read(0x80);
    xil_printf("The ENABLE Register is: %u \n", dataIn);

    while(1)
    {
        uint8_t dataReady = 0x00 | i2c_read(0x71);
        //xil_printf("The STATUS register is: %u \n", dataReady);

        dataReady = (dataReady & 0x1);
        //xil_printf("The Data Ready Bit is: %u \n", dataReady);

        if(dataReady == 1)
        {
            uint16_t spectralData = 0x00 | i2c_read(0x96) << 8 | i2c_read(0x95);

            if(spectralData != lastReading)
            {
                xil_printf("The spectral data is: %lu \n\n", spectralData);
                lastReading = spectralData;
                delay(1000);
            }           
            
        }        
    }
    
}


