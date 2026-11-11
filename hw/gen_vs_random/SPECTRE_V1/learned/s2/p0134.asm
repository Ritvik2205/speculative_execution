.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor bl, bl
adc cl, bl
cmp al, 77
btc rbx, rax
add dl, cl
add dil, -75
and rsi, 0b1111111111111 # instrumentation
cmp bl, byte ptr [r14 + rsi]
sub cl, al
cmp cl, bl
cmp dil, bl
and rax, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rax], dil
and bl, 124
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
