#include <xc.h>

void init_adc(void)
{
    /* Right justified, AN0 analog, AN1-AN7 digital.
     * The 0x00 reset value leaves AN5-AN7 analog, and those are RE0-RE2 --
     * the CLCD drives RE1 (EN) and RE2 (RS) as digital outputs. */
    ADCON1 = 0x8E;
    
    /* ADC clock = Fosc/32 -> Tad = 1.6us at 20MHz, the minimum for this part.
     * The 0b00 reset value is Fosc/2 = 0.1us, which is out of spec. */
    ADCS1 = 1;
    ADCS0 = 0;
    
    /* Starting the ADC Module */
    ADON = 1;
}

unsigned short read_adc(void)
{
    unsigned short adc_reg_val; // 2bytes
    
    /* Start the ADC conversion */
    GO = 1;
    
    /* Wait for the conversion to complete */
    while (nDONE); //nDONE = 0 GO = 0
  
    adc_reg_val = (unsigned short)(ADRESH << 8) | ADRESL;  // 11 1111 1111 -> 1023
    
    return adc_reg_val; // 0 to 1023
    
}
