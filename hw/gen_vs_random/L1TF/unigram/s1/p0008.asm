.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rsi], 1266701637
and rsi, 0b1111111111111 # instrumentation
and cl, byte ptr [r14 + rsi]
xor bx, cx
add dl, -17 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovnl dx, word ptr [r14 + rcx]
and rbx, 0b1111111111000 # instrumentation
and esi, 0b111 # instrumentation
lock btc dword ptr [r14 + rbx], esi
and rax, 0b1111111111111 # instrumentation
sub dl, byte ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
cmovle ebx, dword ptr [r14 + rdx]
cmovo rax, rdx
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
cmovs eax, dword ptr [r14 + rcx]
and rdi, 0b1111111111000 # instrumentation
lock neg byte ptr [r14 + rdi]
mov edx, eax
cmovnl rcx, rsi
sub ebx, edi
lea dx, qword ptr [rax]
and rdx, 0b1111111111111 # instrumentation
cmovnb ecx, dword ptr [r14 + rdx]
add dil, -70 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovl ecx, dword ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
