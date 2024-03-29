startBut 
draw       cp      vga_x1            startBut_x1
           cp      vga_x2            startBut_x2
           cp      vga_y1            startBut_y1
           cp      vga_y2            startBut_y2
           cp      vga_color_write   startBut_col
           call    vga_driver        vga_ra
           
loop       call    touch_driver      touch_ra
           cp      startBut_press    touch_pressed
           cp      startBut_x        touch_x 
           cp      startBut_y        touch_y
           
           bne     loop              startBut_press         startBut_num1
           blt     loop              startBut_x             startBut_x1
           blt     loop              startBut_x2            startBut_x
           blt     loop              startBut_y             startBut_y1
           blt     loop              startBut_y2             startBut_y

           ret    startBut_ra









startBut_num0   0
startBut_num1   1
startBut_x      0
startBut_y      0
startBut_x1     210
startBut_x2     420
startBut_y1     160
startBut_y2     320
startBut_col    65280
startBut_press  0
startBut_ra     0
