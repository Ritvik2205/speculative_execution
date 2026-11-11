.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -45 # instrumentation
cmovs rdi, rdi
and ax, 7954
and rax, 0b1111111111111 # instrumentation
mov rcx, qword ptr [r14 + rax]
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rax], -46
sbb sil, -19
and rdx, 0b1111111111111 # instrumentation
cmovbe esi, dword ptr [r14 + rdx]
jmp .bb_0.2
.bb_0.2:
test al, -82
inc esi
jmp .bb_0.3
.bb_0.3:
test dl, -37
and rbx, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
