Lscreen     call        clear_screen        clear_ra
            cp          L_x1                L_num270
            add         L_x2                L_x1            L_num20
            cp          L_y1                L_num180

            cp          vga_x1              L_x1
            cp          vga_x2              L_x2
            cp          vga_y1              L_y1
            cp          vga_y2              L_y2
            cp          vga_color_write     L_col
            cp          vga_write           L_num1
            call        vga_driver          vga_ra
            add         vga_x2              L_x2            L_num60
            cp          vga_y1              L_num280
            call        vga_driver          vga_ra

            halt       

L_x1        0
L_x2        0
L_y1        200
L_y2        300
L_col       0
L_num1      1
L_num0      0
L_num180    180
L_num280    280
L_num270    270
L_num20     20
L_num60     60
L_ra        0
