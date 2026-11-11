.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, 80 # instrumentation
sbb dil, dil
jmp .bb_0.1
.bb_0.1:
sub al, bl
add cl, -20
and sil, cl
and rcx, 0b1111111111111 # instrumentation
cmovle rbx, qword ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
mov ecx, dword ptr [r14 + rdi]
lea ax, qword ptr [rbx]
xor al, sil
sub bl, sil
and rcx, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rcx], 0
and dil, -82
test cl, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
