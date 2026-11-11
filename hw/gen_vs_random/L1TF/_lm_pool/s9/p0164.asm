.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rcx], 4
test dil, -126
xor dil, dil
btr ax, si
jmp .bb_0.1
.bb_0.1:
bt eax, ecx
xor cl, sil
jmp .bb_0.2
.bb_0.2:
and rax, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rax], 19
lea eax, qword ptr [rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
