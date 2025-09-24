# 1 "../motort.c"
# 1 "<built-in>" 1
# 1 "<built-in>" 3
# 288 "<built-in>" 3
# 1 "<command line>" 1
# 1 "<built-in>" 2
# 1 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18F-K_DFP/1.8.249/xc8\\pic\\include\\language_support.h" 1 3
# 2 "<built-in>" 2
# 1 "../motort.c" 2
# 1 "../motort.h" 1
# 11 "../motort.h"
typedef struct{
    float kp;
    float ki;
    float kpki;
    signed int ek;
    signed int ek_1;
    unsigned char uk;
    unsigned char uk_1;
} Controller;

typedef struct {
    unsigned int Desired;
    unsigned int Actual;
} Motor;

void Controller_Func_P(Motor *Motorptr, Controller *Controlptr);
void Controller_Func_PI(Motor *Motorptr, Controller *Controlptr);
# 1 "../motort.c" 2

void Controller_Func_PI(Motor *Motorptr,Controller *Controlptr)
{
    float temp = 0;

    Controlptr->ek_1 = Controlptr->ek;
    Controlptr->ek = (signed int)(Motorptr->Desired - Motorptr->Actual);

    Controlptr->uk_1 = Controlptr->uk;

    temp = (Controlptr->kpki*Controlptr->ek)-(Controlptr->kp*Controlptr->ek_1);
    Controlptr->uk = (unsigned char) (Controlptr->uk_1 + temp);

    if (Controlptr->uk > 95)
        Controlptr->uk = 95;
}
void Controller_Func_P(Motor *Motorptr, Controller *Controlptr)
{



    if (Motorptr->Desired >= Motorptr->Actual)
        Controlptr->ek = (signed int)( Motorptr->Desired - Motorptr->Actual);
    else
        Controlptr->ek = (signed int)(Motorptr->Actual - Motorptr->Desired);






    Controlptr->uk = (unsigned char) (Controlptr->kp*Controlptr->ek);
    if (Controlptr->uk > 95)
        Controlptr->uk = 95;
}
