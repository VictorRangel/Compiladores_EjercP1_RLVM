#include <stdio.h>
#include <stdlib.h>

main(){
#define OPC 0
#if OPC<0
    printf("El numero es menor que 0");
#elif OPC==0
    printf("El numero es igual que 0\n");
#else
  printf("El numero es mayor que 0\n");
#endif
printf("El valor de opc es: %d \n",OPC);
printf("El valor de opc ha sido borrado. \n");
#undef OPC
#define OPC 5
printf("El nuevo valor de opc es: %d \n",OPC);
#line 20
}
