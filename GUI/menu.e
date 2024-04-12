menu
           sub     vga_y1            menu_y1         menu_num2
           add     vga_y2            menu_y2         menu_num2
           sub     vga_x1            menu_ex1        menu_num2
           add     vga_x2            menu_ex2        menu_num2
           cp      vga_color_write   menu_num0
           cp      vga_write         menu_num1
           call    vga_driver        vga_ra
           
           cp      vga_y1            menu_y1
           cp      vga_y2            menu_y2
           cp      vga_x1            menu_ex1
           cp      vga_x2            menu_ex2
           cp      vga_color_write   menu_ecol
           cp      vga_write         menu_num1
           call    vga_driver        vga_ra

           sub     vga_y1            menu_y1         menu_num2
           add     vga_y2            menu_y2         menu_num2
           sub     vga_x1            menu_mx1        menu_num2
           add     vga_x2            menu_mx2        menu_num2
           cp      vga_color_write   menu_num0
           cp      vga_write         menu_num1
           call    vga_driver        vga_ra
           

           cp      vga_y1            menu_y1
           cp      vga_y2            menu_y2
           cp      vga_x1            menu_mx1
           cp      vga_x2            menu_mx2
           cp      vga_color_write   menu_mcol
           cp      vga_write         menu_num1
           call    vga_driver        vga_ra


           sub     vga_y1            menu_y1         menu_num2
           add     vga_y2            menu_y2         menu_num2
           sub     vga_x1            menu_hx1        menu_num2
           add     vga_x2            menu_hx2        menu_num2
           cp      vga_color_write   menu_num0
           cp      vga_write         menu_num1
           call    vga_driver        vga_ra

           cp      vga_y1            menu_y1
           cp      vga_y2            menu_y2
           cp      vga_x1            menu_hx1
           cp      vga_x2            menu_hx2
           cp      vga_color_write   menu_hcol
           cp      vga_write         menu_num1
           call    vga_driver        vga_ra

           cp      vga_y1            menu_uy1
           cp      vga_y2            menu_uy2
           cp      vga_x1            menu_mx1
           cp      vga_x2            menu_mx2
           cp      vga_color_write   menu_ucol
           cp      vga_write         menu_num1
           call    vga_driver        vga_ra
           cp      0x80000003        menu_num0
           cp      0x80000004        menu_num0





menu_loop  call    touch_driver      touch_ra
           cp      menu_press        touch_pressed
           cp      menu_x            touch_x 
           cp      menu_y            touch_y
           cp      0x80000002        menu_mult
           
           bne     menu_loop         menu_press         menu_num1
           blt     menu_loop         menu_y             menu_y1
           blt     menu_mu           menu_y2            menu_y
           
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

menu_mu    blt     menu_loop         menu_y             menu_uy1
           blt     menu_loop         menu_uy2           menu_y
           blt     menu_loop         menu_x             menu_mx1
           blt     menu_loop         menu_mx2           menu_x
           be      mu_off            menu_mult          menu_num1
           cp      menu_mult         menu_num1
           be      menu_loop         0                  0
mu_off
           cp      menu_mult         menu_num0
           be      menu_loop         0                  0
           
menu_num0   0
menu_num1   1
menu_num2   2
menu_num3   3
menu_num10  10
menu_diff   0
menu_x      0
menu_y      0
menu_y1     150
menu_y2     330
menu_ex1    90
menu_ex2    200
menu_ecol   65280
menu_mx1    250
menu_mx2    360
menu_mcol   16776960
menu_hx1    410
menu_hx2    520
menu_hcol   16711680
menu_press  0
menu_ra     0
menu_uy1    400
menu_uy2    450
menu_ucol   39423
menu_mult   0
