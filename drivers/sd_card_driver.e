sd_card     cp      0x80000082      sd_write
            cp      0x80000083      sd_address
            cp      0x80000080      num_1
check       cp      response        0x80000081
            bne     check           0x80000081      num_1
            cp      sd_data_read    0x80000085
            cp      0x80000080      num_0
            bne     check           0x80000081      num_0
            ret     sd_ra

sd_ra           0
sd_data_read    0
response        0 
sd_data_write   0
sd_address      0
sd_write        0
num_1           1
num_0           0