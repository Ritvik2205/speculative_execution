.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add sil, 67 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovs cx, word ptr [r14 + rsi]
xor al, 54
add cl, -127
or dl, sil
jp .bb_0.1
jmp .bb_0.2
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rdx]
jp .bb_0.2
jmp .exit_0
.bb_0.2:
sbb sil, al
and rdi, 0b1111111111111 # instrumentation
imul si, word ptr [r14 + rdi], -9
test bl, -8
sub al, 63
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
