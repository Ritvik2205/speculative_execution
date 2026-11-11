.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and sil, 11
setns bl
and rdi, 0b1111111111111 # instrumentation
cmovp ax, word ptr [r14 + rdi]
lea dx, qword ptr [rdi + rax]
lea eax, qword ptr [rdx]
jle .bb_0.1
jmp .exit_0
.bb_0.1:
xchg edi, ebx
test dil, -116
and rdx, 0b1111111111111 # instrumentation
cmovnle rdi, qword ptr [r14 + rdx]
test sil, 13
sub ax, -15315
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], dl
and rsi, 0b1111111111111 # instrumentation
or cx, word ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
