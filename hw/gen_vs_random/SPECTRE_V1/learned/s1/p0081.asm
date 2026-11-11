.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rcx]
test bl, -8
xchg esi, ecx
lea rdx, qword ptr [rax]
sbb sil, al
jle .bb_0.1
jmp .bb_0.2
.bb_0.1:
btc ax, cx
lea cx, qword ptr [rdx + rdi + 33]
lea rsi, qword ptr [rdx + rcx]
jmp .bb_0.2
.bb_0.2:
jmp .bb_0.3
.bb_0.3:
and rax, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rax], 7
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
