test1   cp      driver_send_arr     arradd
        cp      driver_send_length  arrlength
        call    serialsend          driver_send_ret
        halt




arradd  arr
arr     97
        98
        99
        
        

arrlength   3

#include serialsend.e
