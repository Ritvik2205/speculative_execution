.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rax], -126
sub al, -66
sub al, bl
and rax, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rax], 7
and dil, dl
mov bl, dl
and rdi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdi], 812406526
lea cx, qword ptr [rdx]
sub cl, al
cmovle rbx, rcx
and cl, -57
sbb sil, sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
