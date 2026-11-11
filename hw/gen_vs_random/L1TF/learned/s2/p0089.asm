.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rcx], 0b1000000000000000000000000000000 # instrumentation
bsf rsi, qword ptr [r14 + rcx]
lea rax, qword ptr [rbx]
and rdi, 0b1111111111111 # instrumentation
mov si, word ptr [r14 + rdi]
and cl, dl
lea bx, qword ptr [rcx + rsi + 89]
jmp .bb_0.1
.bb_0.1:
imul dl
add rax, 1633593912
sbb al, 61
jmp .bb_0.2
.bb_0.2:
add ax, 32140
sub cl, sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
