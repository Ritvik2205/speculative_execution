.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
mov ebx, dword ptr [r14 + rsi]
xchg ecx, esi
test dl, -37
movsx eax, bl
jmp .bb_0.1
.bb_0.1:
bt rcx, 38
mov cl, al
and rax, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rax], sil
jmp .bb_0.2
.bb_0.2:
xor ax, -24879
sbb bl, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
