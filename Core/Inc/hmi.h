#ifndef __HMI_H__
#define __HMI_H__

#ifdef __cplusplus
extern "C" {
#endif

#include <stdio.h>
#include <stdlib.h>
#include <stdbool.h>
#include <string.h>

#include "main.h"
#include "dma.h"
#include "i2c.h"
#include "tim.h"
#include "usart.h"
#include "gpio.h"

#include "fit0450.h"
#include "sg90.h"
#include "hcsr04.h"
#include "iv.h"
#include "i2cdisplay.h"

enum command { INV = 0, EN, REF, INC, DEC, DIST };

unsigned char check_command(char*);
extern void (*exec_command[6])(char*);

void proc_inv_cmd(char*);
void proc_en_cmd(char*);
void proc_ref_cmd(char*);
void proc_inc_cmd(char*);
void proc_dec_cmd(char*);
void proc_dist_cmd(char*);

#endif /* __COMMANDS_H__ */
