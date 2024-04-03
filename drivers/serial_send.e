send    cp          0x800000a2  send_data
        cp          0x800000a0  send_num1
check   cp          response    0x800000a1
        bne     check       0x800000a1  send_num1
        cp      0x800000a0  send_num0
check1  cp      response    0x800000a1
        bne     check1       0x800000a1  send_num0
        ret     send_ra

send_num0   0
send_data   0
response    0
send_num1   1
send_ra     0