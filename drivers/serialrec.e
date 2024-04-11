serialrec       cp      0x80000090              num1
loop            cp      driver_receive_response 0x80000091	
                bne     loop                    driver_receive_response     num1
                cp      driver_receive_data     0x80000092
                cp      0x80000090              num0
loop1           cp      driver_receive_response 0x80000091
                bne     loop1                   driver_receive_response     num0
                ret     driver_receive_ret


driver_receive_ret      0
driver_receive_comm     0
driver_receive_response 0
driver_receive_data     0 
num1                    1
num0                    0
