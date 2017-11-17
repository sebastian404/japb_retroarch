/*******************************************************************************
Project  : aus_yapb_doom
Module   : main.c
Version  : 0.1
Date     : 2017-11-17
Authors  : Sebastain Robinson
Company  : 
Comments : return status of P1 & P2 Start buttons
*******************************************************************************/

#include <sys/types.h>
#include <unistd.h>
#include <sys/stat.h>
#include <sys/mman.h>
#include <fcntl.h>
#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <a13_gpio.h>


int main(void)
{

  int ret, but1, but2;

  ret = a13_gpio_init();
  if(ret)
  {
    printf("gpio_init ERROR\r\n");
    exit(-1);
  }

  but1 = a13_gpio_get_input(SUNXI_PORT_C_BASE, 10)>>10;
  but2 = a13_gpio_get_input(SUNXI_PORT_E_BASE, 0)>>0; 
  printf (" check override : %X%X\n",but1,but2);

  return (but1 + but2);

}
