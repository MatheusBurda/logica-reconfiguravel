
#include <stdio.h>
#include "io.h"
#include "system.h"

int main()
{
    const char string[31] = "matheus augusto burda ++--+++ ";
    int i = 0;
    for (i=0; i<1024; i++){
    	// IOWR(BASE, REGNUM, DATA)
        IOWR(TOP_BRAM_0_BASE, 0, i); 			// Address write enabling the reg_0
        IOWR(TOP_BRAM_0_BASE, 1, string[i%30]); // Data write enabling the reg_1
        IOWR(TOP_BRAM_0_BASE, 2, 1); 			// Pulse on Bram to write enabling reg_2
        char letter = IORD(TOP_BRAM_0_BASE, 3); // Reads Bram enabling reg_3
    }
  return 0;
}
