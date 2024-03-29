vga_driver  cp  0x80000062      vga_write
            cp  0x80000063      vga_x1
            cp  0x80000064      vga_y1
            cp  0x80000065      vga_x2
            cp  0x80000066      vga_y2
            cp  0x80000067      vga_color_write
            cp  vga_command     vga_num1
            cp  0x80000060      vga_command
vga_loop1   cp  vga_response    0x80000061
            bne vga_loop1       vga_response    vga_num1
            cp  vga_color_read  0x80000068
            cp  vga_command     vga_num0
            cp  0x80000060      vga_command
vga_loop2   cp  vga_response    0x80000061
            bne vga_loop2       vga_response    vga_num0
            ret vga_ra







vga_command     0
vga_response    0
vga_write       0
vga_x1          0
vga_y1          0
vga_x2          0
vga_y2          0
vga_color_write 0
vga_color_read  0
vga_num1        1
vga_num0        0
vga_ra          0
