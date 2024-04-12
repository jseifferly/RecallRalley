serialrec       cp      0x80000090              re_num1
re_loop         cp      driver_receive_response 0x80000091	
                bne     re_loop                 driver_receive_response     re_num1
                cp      driver_receive_data     0x80000092
                cp      0x80000090              re_num0
r_loop1         cp      driver_receive_response 0x80000091
                bne     r_loop1                 driver_receive_response     re_num0
                ret     driver_receive_ret


driver_receive_ret      0
driver_receive_comm     0
driver_receive_response 0
driver_receive_data     0 
re_num1                 1
re_num0                 0
