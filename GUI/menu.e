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



            cp      vga_y1            menu_r1_y1
            cp      vga_y2            menu_r1_y2
            cp      vga_x1            menu_r1_x1
            cp      vga_x2            menu_r1_x2
            cp      vga_color_write   menu_r_color
            cp      vga_write         menu_num1
            call    vga_driver        vga_ra

            cp      vga_y1            menu_r2_y1
            cp      vga_y2            menu_r2_y2
            cp      vga_x1            menu_r2_x1
            cp      vga_x2            menu_r2_x2
            cp      vga_color_write   menu_r_color
            cp      vga_write         menu_num1
            call    vga_driver        vga_ra

            cp      vga_y1            menu_r3_y1
            cp      vga_y2            menu_r3_y2
            cp      vga_x1            menu_r3_x1
            cp      vga_x2            menu_r3_x2
            cp      vga_color_write   menu_r_color
            cp      vga_write         menu_num1
            call    vga_driver        vga_ra

            cp      vga_y1            menu_r4_y1
            cp      vga_y2            menu_r4_y2
            cp      vga_x1            menu_r4_x1
            cp      vga_x2            menu_r4_x2
            cp      vga_color_write   menu_r_color
            cp      vga_write         menu_num1
            call    vga_driver        vga_ra

            cp      vga_y1            menu_r5_y1
            cp      vga_y2            menu_r5_y2
            cp      vga_x1            menu_r5_x1
            cp      vga_x2            menu_r5_x2
            cp      vga_color_write   menu_r_color
            cp      vga_write         menu_num1
            call    vga_driver        vga_ra

            cp      vga_y1            menu_e1_y1
            cp      vga_y2            menu_e1_y2
            cp      vga_x1            menu_e1_x1
            cp      vga_x2            menu_e1_x2
            cp      vga_color_write   menu_r_color
            cp      vga_write         menu_num1
            call    vga_driver        vga_ra

            cp      vga_y1            menu_e2_y1
            cp      vga_y2            menu_e2_y2
            cp      vga_x1            menu_e2_x1
            cp      vga_x2            menu_e2_x2
            cp      vga_color_write   menu_r_color
            cp      vga_write         menu_num1
            call    vga_driver        vga_ra

            cp      vga_y1            menu_e3_y1
            cp      vga_y2            menu_e3_y2
            cp      vga_x1            menu_e3_x1
            cp      vga_x2            menu_e3_x2
            cp      vga_color_write   menu_r_color
            cp      vga_write         menu_num1
            call    vga_driver        vga_ra

            cp      vga_y1            menu_e4_y1
            cp      vga_y2            menu_e4_y2
            cp      vga_x1            menu_e4_x1
            cp      vga_x2            menu_e4_x2
            cp      vga_color_write   menu_r_color
            cp      vga_write         menu_num1
            call    vga_driver        vga_ra

            cp      vga_y1            menu_c1_y1
            cp      vga_y2            menu_c1_y2
            cp      vga_x1            menu_c1_x1
            cp      vga_x2            menu_c1_x2
            cp      vga_color_write   menu_r_color
            cp      vga_write         menu_num1
            call    vga_driver        vga_ra

            cp      vga_y1            menu_c2_y1
            cp      vga_y2            menu_c2_y2
            cp      vga_x1            menu_c2_x1
            cp      vga_x2            menu_c2_x2
            cp      vga_color_write   menu_r_color
            cp      vga_write         menu_num1
            call    vga_driver        vga_ra

            cp      vga_y1            menu_c3_y1
            cp      vga_y2            menu_c3_y2
            cp      vga_x1            menu_c3_x1
            cp      vga_x2            menu_c3_x2
            cp      vga_color_write   menu_r_color
            cp      vga_write         menu_num1
            call    vga_driver        vga_ra

            cp      vga_y1            menu_c4_y1
            cp      vga_y2            menu_c4_y2
            cp      vga_x1            menu_c4_x1
            cp      vga_x2            menu_c4_x2
            cp      vga_color_write   menu_r_color
            cp      vga_write         menu_num1
            call    vga_driver        vga_ra

            cp      vga_y1            menu_c5_y1
            cp      vga_y2            menu_c5_y2
            cp      vga_x1            menu_c5_x1
            cp      vga_x2            menu_c5_x2
            cp      vga_color_write   menu_r_color
            cp      vga_write         menu_num1
            call    vga_driver        vga_ra


            cp      vga_y1            menu_a1_y1
            cp      vga_y2            menu_a1_y2
            cp      vga_x1            menu_a1_x1
            cp      vga_x2            menu_a1_x2
            cp      vga_color_write   menu_r_color
            cp      vga_write         menu_num1
            call    vga_driver        vga_ra

            cp      vga_y1            menu_a2_y1
            cp      vga_y2            menu_a2_y2
            cp      vga_x1            menu_a2_x1
            cp      vga_x2            menu_a2_x2
            cp      vga_color_write   menu_r_color
            cp      vga_write         menu_num1
            call    vga_driver        vga_ra

            cp      vga_y1            menu_a3_y1
            cp      vga_y2            menu_a3_y2
            cp      vga_x1            menu_a3_x1
            cp      vga_x2            menu_a3_x2
            cp      vga_color_write   menu_r_color
            cp      vga_write         menu_num1
            call    vga_driver        vga_ra

            cp      vga_y1            menu_a4_y1
            cp      vga_y2            menu_a4_y2
            cp      vga_x1            menu_a4_x1
            cp      vga_x2            menu_a4_x2
            cp      vga_color_write   menu_r_color
            cp      vga_write         menu_num1
            call    vga_driver        vga_ra

            

            cp      vga_y1            menu_l1_y1
            cp      vga_y2            menu_l1_y2
            cp      vga_x1            menu_l1_x1
            cp      vga_x2            menu_l1_x2
            cp      vga_color_write   menu_r_color
            cp      vga_write         menu_num1
            call    vga_driver        vga_ra

            cp      vga_y1            menu_l2_y1
            cp      vga_y2            menu_l2_y2
            cp      vga_x1            menu_l2_x1
            cp      vga_x2            menu_l2_x2
            cp      vga_color_write   menu_r_color
            cp      vga_write         menu_num1
            call    vga_driver        vga_ra


            cp      vga_y1            menu_L1_y1
            cp      vga_y2            menu_L1_y2
            cp      vga_x1            menu_L1_x1
            cp      vga_x2            menu_L1_x2
            cp      vga_color_write   menu_r_color
            cp      vga_write         menu_num1
            call    vga_driver        vga_ra

            cp      vga_y1            menu_L2_y1
            cp      vga_y2            menu_L2_y2
            cp      vga_x1            menu_L2_x1
            cp      vga_x2            menu_L2_x2
            cp      vga_color_write   menu_r_color
            cp      vga_write         menu_num1
            call    vga_driver        vga_ra

            cp      vga_y1            menu_R1_y1
            cp      vga_y2            menu_R1_y2
            cp      vga_x1            menu_R1_x1
            cp      vga_x2            menu_R1_x2
            cp      vga_color_write   menu_r_color
            cp      vga_write         menu_num1
            call    vga_driver        vga_ra

            cp      vga_y1            menu_R2_y1
            cp      vga_y2            menu_R2_y2
            cp      vga_x1            menu_R2_x1
            cp      vga_x2            menu_R2_x2
            cp      vga_color_write   menu_r_color
            cp      vga_write         menu_num1
            call    vga_driver        vga_ra

            cp      vga_y1            menu_R3_y1
            cp      vga_y2            menu_R3_y2
            cp      vga_x1            menu_R3_x1
            cp      vga_x2            menu_R3_x2
            cp      vga_color_write   menu_r_color
            cp      vga_write         menu_num1
            call    vga_driver        vga_ra

            cp      vga_y1            menu_R4_y1
            cp      vga_y2            menu_R4_y2
            cp      vga_x1            menu_R4_x1
            cp      vga_x2            menu_R4_x2
            cp      vga_color_write   menu_r_color
            cp      vga_write         menu_num1
            call    vga_driver        vga_ra

            cp      vga_y1            menu_R5_y1
            cp      vga_y2            menu_R5_y2
            cp      vga_x1            menu_R5_x1
            cp      vga_x2            menu_R5_x2
            cp      vga_color_write   menu_r_color
            cp      vga_write         menu_num1
            call    vga_driver        vga_ra


            cp      vga_y1            menu_A1_y1
            cp      vga_y2            menu_A1_y2
            cp      vga_x1            menu_A1_x1
            cp      vga_x2            menu_A1_x2
            cp      vga_color_write   menu_r_color
            cp      vga_write         menu_num1
            call    vga_driver        vga_ra
            
            cp      vga_y1            menu_A2_y1
            cp      vga_y2            menu_A2_y2
            cp      vga_x1            menu_A2_x1
            cp      vga_x2            menu_A2_x2
            cp      vga_color_write   menu_r_color
            cp      vga_write         menu_num1
            call    vga_driver        vga_ra

            cp      vga_y1            menu_A3_y1
            cp      vga_y2            menu_A3_y2
            cp      vga_x1            menu_A3_x1
            cp      vga_x2            menu_A3_x2
            cp      vga_color_write   menu_r_color
            cp      vga_write         menu_num1
            call    vga_driver        vga_ra

            cp      vga_y1            menu_A4_y1
            cp      vga_y2            menu_A4_y2
            cp      vga_x1            menu_A4_x1
            cp      vga_x2            menu_A4_x2
            cp      vga_color_write   menu_r_color
            cp      vga_write         menu_num1
            call    vga_driver        vga_ra


            cp      vga_y1            menu_2l1_y1
            cp      vga_y2            menu_2l1_y2
            cp      vga_x1            menu_2l1_x1
            cp      vga_x2            menu_2l1_x2
            cp      vga_color_write   menu_r_color
            cp      vga_write         menu_num1
            call    vga_driver        vga_ra

            cp      vga_y1            menu_2l2_y1
            cp      vga_y2            menu_2l2_y2
            cp      vga_x1            menu_2l2_x1
            cp      vga_x2            menu_2l2_x2
            cp      vga_color_write   menu_r_color
            cp      vga_write         menu_num1
            call    vga_driver        vga_ra


            cp      vga_y1            menu_2L1_y1
            cp      vga_y2            menu_2L1_y2
            cp      vga_x1            menu_2L1_x1
            cp      vga_x2            menu_2L1_x2
            cp      vga_color_write   menu_r_color
            cp      vga_write         menu_num1
            call    vga_driver        vga_ra

            cp      vga_y1            menu_2L2_y1
            cp      vga_y2            menu_2L2_y2
            cp      vga_x1            menu_2L2_x1
            cp      vga_x2            menu_2L2_x2
            cp      vga_color_write   menu_r_color
            cp      vga_write         menu_num1
            call    vga_driver        vga_ra

            cp      vga_y1            menu_y1_y1
            cp      vga_y2            menu_y1_y2
            cp      vga_x1            menu_y1_x1
            cp      vga_x2            menu_y1_x2
            cp      vga_color_write   menu_r_color
            cp      vga_write         menu_num1
            call    vga_driver        vga_ra

            cp      vga_y1            menu_y2_y1
            cp      vga_y2            menu_y2_y2
            cp      vga_x1            menu_y2_x1
            cp      vga_x2            menu_y2_x2
            cp      vga_color_write   menu_r_color
            cp      vga_write         menu_num1
            call    vga_driver        vga_ra

            cp      vga_y1            menu_y3_y1
            cp      vga_y2            menu_y3_y2
            cp      vga_x1            menu_y3_x1
            cp      vga_x2            menu_y3_x2
            cp      vga_color_write   menu_r_color
            cp      vga_write         menu_num1
            call    vga_driver        vga_ra

            cp      vga_y1            menu_y4_y1
            cp      vga_y2            menu_y4_y2
            cp      vga_x1            menu_y4_x1
            cp      vga_x2            menu_y4_x2
            cp      vga_color_write   menu_r_color
            cp      vga_write         menu_num1
            call    vga_driver        vga_ra



menu_loop   call    touch_driver      touch_ra
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
menu_c      blt     menu_loop         menu_x             menu_mx1
            blt     menu_r            menu_mx2           menu_x
            cp      menu_diff         menu_num2
            ret     menu_ra
menu_r      blt     menu_loop         menu_x             menu_hx1
            blt     menu_loop         menu_hx2           menu_x
            cp      menu_diff         menu_num3
            ret     menu_ra

menu_mu     blt     menu_loop         menu_y             menu_uy1
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

menu_r1_x1      70
menu_r1_y1      30
menu_r1_x2      80
menu_r1_y2      90

menu_r2_x1      80
menu_r2_y1      30
menu_r2_x2      100
menu_r2_y2      40

menu_r3_x1      80
menu_r3_y1      60
menu_r3_x2      100
menu_r3_y2      70

menu_r4_x1      100
menu_r4_y1      40
menu_r4_x2      110
menu_r4_y2      60

menu_r5_x1      100
menu_r5_y1      70
menu_r5_x2      110
menu_r5_y2      90


menu_e1_x1      120
menu_e1_y1      30
menu_e1_x2      130
menu_e1_y2      90

menu_e2_x1      130
menu_e2_y1      30
menu_e2_x2      150
menu_e2_y2      40

menu_e3_x1      130
menu_e3_y1      50
menu_e3_x2      140
menu_e3_y2      60

menu_e4_x1      130
menu_e4_y1      80
menu_e4_x2      150
menu_e4_y2      90


menu_c1_x1      160
menu_c1_y1      40
menu_c1_x2      170
menu_c1_y2      80

menu_c2_x1      170
menu_c2_y1      30
menu_c2_x2      190
menu_c2_y2      40

menu_c3_x1      170
menu_c3_y1      80
menu_c3_x2      190
menu_c3_y2      90

menu_c4_x1      190
menu_c4_y1      40
menu_c4_x2      200
menu_c4_y2      50

menu_c5_x1      190
menu_c5_y1      70
menu_c5_x2      200
menu_c5_y2      80


menu_a1_x1      210
menu_a1_y1      40
menu_a1_x2      220
menu_a1_y2      90

menu_a2_x1      220
menu_a2_y1      30
menu_a2_x2      240
menu_a2_y2      40

menu_a3_x1      220
menu_a3_y1      60
menu_a3_x2      240
menu_a3_y2      70

menu_a4_x1      240
menu_a4_y1      40
menu_a4_x2      250
menu_a4_y2      90


menu_l1_x1      260
menu_l1_y1      30
menu_l1_x2      270
menu_l1_y2      90

menu_l2_x1      270
menu_l2_y1      80
menu_l2_x2      290
menu_l2_y2      90


menu_L1_x1      300
menu_L1_y1      30
menu_L1_x2      310
menu_L1_y2      90

menu_L2_x1      310
menu_L2_y1      80
menu_L2_x2      330
menu_L2_y2      90


menu_R1_x1      350
menu_R1_y1      30
menu_R1_x2      360
menu_R1_y2      90

menu_R2_x1      360
menu_R2_y1      30
menu_R2_x2      380
menu_R2_y2      40

menu_R3_x1      360
menu_R3_y1      60
menu_R3_x2      380
menu_R3_y2      70

menu_R4_x1      380
menu_R4_y1      40
menu_R4_x2      390
menu_R4_y2      60

menu_R5_x1      380
menu_R5_y1      70
menu_R5_x2      390
menu_R5_y2      90


menu_A1_x1      400
menu_A1_y1      40
menu_A1_x2      410
menu_A1_y2      90

menu_A2_x1      410
menu_A2_y1      30
menu_A2_x2      430
menu_A2_y2      40

menu_A3_x1      410
menu_A3_y1      60
menu_A3_x2      430
menu_A3_y2      70

menu_A4_x1      430
menu_A4_y1      40
menu_A4_x2      440
menu_A4_y2      90

menu_2l1_x1     450
menu_2l1_y1     30
menu_2l1_x2     460
menu_2l1_y2     90

menu_2l2_x1     460
menu_2l2_y1     80
menu_2l2_x2     480
menu_2l2_y2     90

menu_2L1_x1     490
menu_2L1_y1     30
menu_2L1_x2     500
menu_2L1_y2     90

menu_2L2_x1     500
menu_2L2_y1     80
menu_2L2_x2     520
menu_2L2_y2     90


menu_y1_x1      530
menu_y1_y1      30
menu_y1_x2      540
menu_y1_y2      60

menu_y2_x1      540
menu_y2_y1      60
menu_y2_x2      570
menu_y2_y2      70

menu_y3_x1      550
menu_y3_y1      70
menu_y3_x2      560
menu_y3_y2      90

menu_y4_x1      570
menu_y4_y1      30
menu_y4_x2      580
menu_y4_y2      60


menu_r_color 0
