.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor ax, -29507
xor bl, al
dec cl
and rax, 0b1111111111111 # instrumentation
xor bl, byte ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
or ax, word ptr [r14 + rdi]
test eax, -251558852
inc dl
or bl, bl
or cl, 83
and rsi, 0b1111111111111 # instrumentation
adc cl, byte ptr [r14 + rsi]
bts si, 59
and sil, -84
test bl, -29
and cl, cl
dec dil
xor al, cl
cmp al, -78
or cl, -55
and rsi, 0b1111111111111 # instrumentation
add cl, byte ptr [r14 + rsi]
add dl, dil
cmp sil, -100
cmp al, 98
and rdx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdx], 119
dec dl
dec al
or rax, rcx
test sil, dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
