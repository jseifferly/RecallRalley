serialsend      cp      0x800000a2	            driver_send_data     
                cp      0x800000a0              num1
s_loop          cp      driver_send_response    0x800000a1	
                bne     s_loop                   driver_send_response     num1
                cp      0x800000a0              num0
s_loop1         cp      driver_send_response    0x800000a1
                bne     s_loop1                 driver_send_response     num0
                ret     driver_send_ret




driver_send_ret      0
driver_send_comm     0
driver_send_response 0
driver_send_data     0 
driver_send_arr      0
i                    0
num0                 0
num1                 1