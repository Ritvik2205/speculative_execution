.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rdi], -40
and rbx, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rbx]
sub al, 63
or eax, 848176907
add dil, -75
sbb rcx, 93
and rax, 0b1111111111111 # instrumentation
and word ptr [r14 + rax], dx
js .bb_0.1
jmp .exit_0
.bb_0.1:
sub al, -82
seto sil
or esi, 0b1000000000000000000000000000000 # instrumentation
bsr eax, esi
lea bx, qword ptr [rsi + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
