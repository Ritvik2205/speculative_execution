.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test bl, -29
and rax, 0b1111111111111 # instrumentation
xor sil, byte ptr [r14 + rax]
cmp al, 75
add cl, dil
xor rsi, -102
dec cl
or sil, -47
cmp al, cl
xor dil, bl
adc dil, 112
and dl, bl
and rdi, 0b1111111111111 # instrumentation
add dl, byte ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
