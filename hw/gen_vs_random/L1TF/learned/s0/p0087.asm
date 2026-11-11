.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, -14 # instrumentation
lea ax, qword ptr [rdx + rsi]
and rcx, 0b1111111111111 # instrumentation
cmovnle ebx, dword ptr [r14 + rcx]
jmp .bb_0.1
.bb_0.1:
sbb bl, -88
jmp .bb_0.2
.bb_0.2:
and rdx, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rdx]
sbb bl, cl
lea ax, qword ptr [rdx + rdi + 37]
and dl, 73
sbb sil, al
and rax, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rax], 38
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
