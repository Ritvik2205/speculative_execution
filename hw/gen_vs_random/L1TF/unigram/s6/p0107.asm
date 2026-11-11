.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and al, -68
cmp sil, sil
lea dx, qword ptr [rdx + rax]
and rsi, 0b1111111111111 # instrumentation
cmovno edx, dword ptr [r14 + rsi]
sbb cl, -11
and rsi, 0b1111111111111 # instrumentation
cmovbe bx, word ptr [r14 + rsi]
bt dx, bx
and rcx, 0b1111111111111 # instrumentation
and ecx, dword ptr [r14 + rcx]
movzx eax, si
and rsi, 0b1111111111111 # instrumentation
cmovs bx, word ptr [r14 + rsi]
cmovz bx, ax
and rsi, 0b1111111111111 # instrumentation
mov rax, qword ptr [r14 + rsi]
and al, al
and rdx, 0b1111111111111 # instrumentation
mov bl, byte ptr [r14 + rdx]
and rbx, 0b1111111111000 # instrumentation
lock inc byte ptr [r14 + rbx]
setz dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
