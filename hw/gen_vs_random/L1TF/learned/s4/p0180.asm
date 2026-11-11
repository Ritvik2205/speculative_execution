.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, 121 # instrumentation
cmovs edx, edx
and rbx, 0b1111111111111 # instrumentation
sbb cx, word ptr [r14 + rbx]
and rbx, 0b1111111111000 # instrumentation
lock neg byte ptr [r14 + rbx]
lea rdx, qword ptr [rbx + rdi + 10]
add bl, bl
and rsi, 0b1111111111111 # instrumentation
cmovz esi, dword ptr [r14 + rsi]
adc al, 36
cmovnl di, cx
jmp .bb_0.1
.bb_0.1:
add dx, si
cmovs esi, eax
and rbx, 0b1111111111111 # instrumentation
neg dword ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
xor edi, dword ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
cmovle ebx, dword ptr [r14 + rcx]
sbb rax, 717206440
adc al, -3
and rdi, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rdi], rdx
and rbx, 0b1111111111111 # instrumentation
and bl, byte ptr [r14 + rbx]
cmovz ecx, esi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
