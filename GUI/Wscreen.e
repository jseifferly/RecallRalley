Wscreen     call        clear_screen        clear_ra
            cp          W_x1                W_num270
            add         W_x2                W_x1            W_num20
            cp          W_y1                W_num180
            
            cp          vga_x1              W_x1
            cp          vga_x2              W_x2
            cp          vga_y1              W_y1
            cp          vga_y2              W_y2
            cp          vga_color_write     W_col
            cp          vga_write           W_num1
            call        vga_driver          vga_ra
            add         vga_x1              W_x1            W_num40
            add         vga_x2              W_x2            W_num40
            call        vga_driver          vga_ra
            add         vga_x1              vga_x1          W_num40
            add         vga_x2              vga_x2          W_num40
            call        vga_driver          vga_ra
            cp          vga_x1              W_num270
            cp          vga_y1              W_num280
            call        vga_driver          vga_ra 

            ret         W_ra

W_x1        0
W_x2        0
W_y1        200
W_y2        300
W_col       0
W_num1      1
W_num0      0
W_num20     20
W_num40     40
W_num180    180
W_num270    270
W_num280    280
W_num100    100
W_ra        0
