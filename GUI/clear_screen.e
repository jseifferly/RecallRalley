clear_screen    cp      vga_x1              clear_x1
                cp      vga_y1              clear_y1
                cp      vga_x2              clear_x2
                cp      vga_y2              clear_y2
                cp      vga_color_write     clear_color
                cp      vga_write           clear_num1
                call    vga_driver          vga_ra
                ret     clear_ra





clear_x1    0
clear_y1    0
clear_x2    639
clear_y2    479
clear_color 100000255
clear_ra    0
clear_num1  1
