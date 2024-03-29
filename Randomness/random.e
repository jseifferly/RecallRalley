reset   cp      random_i           random_num0
loop    add     random_i           random_i           random_num_1
        cp      0x80000003         random_i
        be      reset              random_i           random_patternlength
        be      loop               random_num_0       random_num0
end     halt
random_num_0   0
random_num0    0
random_num_1   1
random_patternlength   3
random_i       0
