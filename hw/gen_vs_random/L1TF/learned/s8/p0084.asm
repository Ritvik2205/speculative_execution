.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
or esi, dword ptr [r14 + rdi]
cmp eax, 951020724
and rdi, 0b1111111111111 # instrumentation
mov dl, byte ptr [r14 + rdi]
and ecx, 88
jmp .bb_0.1
.bb_0.1:
lea ax, qword ptr [rbx]
cmovnle rbx, rdx
sbb dl, al
and ax, 26813
jmp .bb_0.2
.bb_0.2:
btc di, si
and rsi, 0b1111111111111 # instrumentation
xor dl, byte ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
