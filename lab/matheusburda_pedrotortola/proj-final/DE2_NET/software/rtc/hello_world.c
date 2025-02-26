#include <stdio.h>
#include <unistd.h> // For usleep function
#include "io.h"
#include "system.h"

#define HR 23
#define MIN 58
#define SEC 50

int main() {
    // Encode the time into complete_reg_content
     int complete_reg_content = ((HR / 10) << 20) | ((HR % 10) << 16) | ((MIN / 10) << 12) | ((MIN % 10) << 8) | ((SEC / 10) << 4) | (SEC % 10);

    // Decode and print the encoded time
    printf("loading:%d\nDecoded time on load -> %02d:%02d:%02d\n",
    		complete_reg_content,
           ((complete_reg_content >> 20) & 0xF) * 10 + ((complete_reg_content >> 16) & 0xF),
           ((complete_reg_content >> 12) & 0xF) * 10 + ((complete_reg_content >> 8) & 0xF),
           ((complete_reg_content >> 4) & 0xF) * 10 + (complete_reg_content & 0xF));

    IOWR(TOP_RTC_0_BASE, 0, complete_reg_content);
    IOWR(TOP_RTC_0_BASE, 1, 1);

    long double i = 0;
    for (i = 0; i < 120; i++) {
        int read_data = IORD(TOP_RTC_0_BASE, 0);

        printf("current time -> %02d:%02d:%02d\n",
               ((read_data >> 20) & 0xF) * 10 + ((read_data >> 16) & 0xF),
               ((read_data >> 12) & 0xF) * 10 + ((read_data >> 8) & 0xF),
               ((read_data >> 4) & 0xF) * 10 + (read_data & 0xF));

        usleep(500000);
    }

    complete_reg_content = ((11 / 10) << 20) | ((11 % 10) << 16) | ((5 / 10) << 12) | ((5 % 10) << 8) | ((20 / 10) << 4) | (20 % 10);
    IOWR(TOP_RTC_0_BASE, 0, complete_reg_content);
    IOWR(TOP_RTC_0_BASE, 1, 1);

    for (i = 0; i < 120; i++) {
        int read_data = IORD(TOP_RTC_0_BASE, 0);

        printf("new time -> %02d:%02d:%02d\n",
               ((read_data >> 20) & 0xF) * 10 + ((read_data >> 16) & 0xF),
               ((read_data >> 12) & 0xF) * 10 + ((read_data >> 8) & 0xF),
               ((read_data >> 4) & 0xF) * 10 + (read_data & 0xF));

        usleep(500000);
    }
    printf("Finished\n");
    return 0;
}
