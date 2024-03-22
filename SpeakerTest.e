reset   cp      i               num_0
loop    cpfa    sound           array       i
        cp      param           sound      
        call    DeviceDriver    driv_ra
add1    add     i               i           plus1
        be      reset           i           arrayS
branch  be      loop            0           0
end     halt
num_0   0
i       0
plus1   1
arrayS  18    
sound   0
array   0
        363717072
        684428797
        924214714
        1054722904
        1060522280
        940927133
        710078208
        395270728
        33727045
        -331804471
        -658103937
        -906590206
        -1047882644
        -1065275049
        -956710970
        -735026858
        -426434300
        -67420806

#include DeviceDriver.e