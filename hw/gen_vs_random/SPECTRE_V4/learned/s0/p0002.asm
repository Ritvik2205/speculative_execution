.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and bl, -30
mov cl, bl
cmp al, -44
cmp edx, -95
adc cl, 111
adc sil, cl
and rsi, 0b1111111111111 # instrumentation
add dil, byte ptr [r14 + rsi]
sub al, -128
or cl, 66
cmp rsi, 22
mov cl, sil
cmp bl, sil
and dl, 124
and rax, 0b1111111111111 # instrumentation
inc byte ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
xor cl, byte ptr [r14 + rdx]
sbb cl, 35
dec al
and dil, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
