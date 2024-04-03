serial_send_test

start	be	    end	    i  size
	cpfa	arr	    array1	i
	add	    i	    i	plus1		
    cp      send_data   arr     
    call    send     send_ra
	be	    start	0	0
end    halt

array1 72
array2 69
array3 76
array4 76
array5 79
arr 0
size 5
i 0
plus1 1

#include serial_send.e