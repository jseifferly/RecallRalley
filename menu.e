menu
           cp      vga_y1            menu_y1
           cp      vga_y2            menu_y2

           cp      vga_x1            menu_ex1
           cp      vga_x2            menu_ex2
           cp      vga_color_write   menu_ecol
           cp      vga_write         menu_num1
           call    vga_driver        vga_ra

           cp      vga_x1            menu_mx1
           cp      vga_x2            menu_mx2
           cp      vga_color_write   menu_mcol
           cp      vga_write         menu_num1
           call    vga_driver        vga_ra

           cp      vga_x1            menu_hx1
           cp      vga_x2            menu_hx2
           cp      vga_color_write   menu_hcol
           cp      vga_write         menu_num1
           call    vga_driver        vga_ra




menu_loop  call    touch_driver      touch_ra
           cp      menu_press        touch_pressed
           cp      menu_x            touch_x 
           cp      menu_y            touch_y
           
           bne     menu_loop         menu_press         menu_num1
           blt     menu_loop         menu_y             menu_y1
           blt     menu_loop         menu_y2            menu_y
           
           blt     menu_loop         menu_x             menu_ex1     
           blt     menu_c            menu_ex2           menu_x   
           cp      menu_diff         menu_num1
           ret     menu_ra
menu_c     blt     menu_loop         menu_x             menu_mx1
           blt     menu_r            menu_mx2           menu_x
           cp      menu_diff         menu_num2
           ret     menu_ra
menu_r     blt     menu_loop         menu_x             menu_hx1
           blt     menu_loop         menu_hx2           menu_x
           cp      menu_diff         menu_num3
           ret     menu_ra

           
menu_num0   0
menu_num1   1
menu_num2   2
menu_num3   3
menu_diff   0
menu_x      0
menu_y      0
menu_y1     120
menu_y2     240
menu_ex1     80
menu_ex2     160
menu_ecol    65280
menu_mx1     240
menu_mx2     320
menu_mcol    16776960
menu_hx1     400
menu_hx2     480
menu_hcol    16711680
menu_press  0
menu_ra     0
