sd_card_driver_test

start   be      end     i    size
        cp      sd_write    num0
        cp      sd_address  i
        call    sd_card      sd_ra
        cp      data        sd_data_read
        cp      0x80000001  data
        add     i       i       num1
        be      start   0       0
end     halt

i       0
size    1000000
data    0
num0    0
num1    1

#include sd_card_driver.e