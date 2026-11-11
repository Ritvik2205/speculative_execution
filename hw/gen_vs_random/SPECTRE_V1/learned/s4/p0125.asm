.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
bt rsi, rdx
sbb esi, -4
lea edx, qword ptr [rax]
neg bl
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], dil
xor ax, 17976
sbb dil, 89
and rsi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rsi], 47
test al, 70
and rdx, 0b1111111111111 # instrumentation
cmp eax, dword ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
and rax, 0b111 # instrumentation
btc qword ptr [r14 + rbx], rax
and rax, 0b1111111111111 # instrumentation
cmovs dx, word ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
setnp byte ptr [r14 + rdx]
xor dl, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
