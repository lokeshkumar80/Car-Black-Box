#include <xc.h>
#include "i2c.h"

/* Wait for the MSSP to finish its current master operation. Hardware sets
 * SSPIF when a start, stop, byte transfer or ACK cycle completes; polling it
 * is more portable than the R/W + SSPCON2 idle test, which not every model
 * of the module reproduces. Bounded so an absent or unresponsive slave can't
 * wedge the whole system: a 100kHz byte takes ~90us and this guard is far
 * longer than that, so it only expires when the bus is genuinely stuck. */
static void i2c_wait(void)
{
    unsigned int guard = 2000;
    while (!SSPIF && --guard);
    SSPIF = 0;
}

void init_i2c(unsigned long baud)
{
    /* Set I2C Master Mode */
    SSPM3 = 1;
    
    /* Set the Required Baudrate */
    SSPADD  = (unsigned char)(FOSC / (4 * baud)) - 1;
    
    /* Enable SSP */
    SSPEN = 1;
    SSPIF = 0;
}

void i2c_start(void)
{
    SSPIF = 0;
    SEN = 1;
    i2c_wait();
}

void i2c_rep_start(void)
{
    i2c_stop();
    i2c_start();
}

void i2c_stop(void)
{
    SSPIF = 0;
    PEN = 1;
    i2c_wait();
}

unsigned char i2c_read(unsigned char ack)
{
    unsigned char data;
    
    SSPIF = 0;
    RCEN = 1;
    i2c_wait();
    data = SSPBUF;
    
    /* ack == 1 -> NACK (last byte), ack == 0 -> ACK (more to come) */
    if (ack == 1)
    {
        ACKDT = 1;
    }
    else
    {
        ACKDT = 0;
    }
    SSPIF = 0;
    ACKEN = 1;
    i2c_wait();
    
    return data;
}

int i2c_write(unsigned char data)
{
    SSPIF = 0;
    SSPBUF = data;
    i2c_wait();
    
    return !ACKSTAT; // !1
}
