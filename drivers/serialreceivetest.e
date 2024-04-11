test2           call    serialrec   driver_receive_ret
                cp      sent_pass   driver_receive_data
                be      green       correct_pass        sent_pass
                cp      0x80000001  num1
                halt
green           cp      0x80000002  num1
                halt

correct_pass    97
                98
                99

sent_pass   0

#include serialrec.e