    cp      vga_x1              x1
    cp      vga_y1              y1
    cp      vga_x2              x2
    cp      vga_y2              y2
    cp      vga_color_write     color
    cp      vga_write           num1
    call    vga_driver          vga_ra
    halt


x1      0 
y1      0    
x2      639
y2      479
num1    1
color   0


#include vga_driver.e
