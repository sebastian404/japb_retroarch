/*******************************************************************************
Project  : aus_yapb_retroarch
Module   : main.c
Version  : 0.1
Date     : 2017-06-04
Authors  : Sebastain Robinson
Company  : 
Comments : return status of VGA hardware
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

  int ret;

  ret = a13_gpio_init();
  if(ret)
  {
    printf("gpio_init ERROR\r\n");
    exit(-1);
  }

  ret = a13_gpio_get_input(SUNXI_PORT_E_BASE, 11)>>11;
  printf (" check gpio PE11 : %X\n",ret);

  return (ret); 

}
