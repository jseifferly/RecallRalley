read    call    driver          touch_ra
        cp      press           touch_pressed
        cp      x               touch_x 
        cp      y               touch_y
        blt     skip1           x           max_x
        cp      max_x           x 
skip1   blt     skip2           y           max_y
        cp      max_y           y 
skip2   cp      0x80000003      max_x
        cp      0x80000004      max_y
        be      read            0               0
        halt

x       0
y       0
max_x   0
max_y   0
press   0
num1    1
num0    0

#include driver.e

//blt     skip            x           max_x
//        cp      max_x           x 
//skip    blt     skip2           y           max_y
//        cp      max_y           y 
