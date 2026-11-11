.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and sil, -90
xor bx, 88
and rsi, 0b1111111111111 # instrumentation
btc word ptr [r14 + rsi], 65
xor sil, 64
and rbx, 0b1111111111111 # instrumentation
or dil, byte ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
cmp cl, byte ptr [r14 + rcx]
and rcx, 0b1111111111000 # instrumentation
and rcx, 0b111 # instrumentation
lock btc qword ptr [r14 + rcx], rcx
and rdx, 0b1111111111111 # instrumentation
neg qword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
adc al, byte ptr [r14 + rax]
sub ax, bx
and rax, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rax], rsi
xor ebx, eax
cmovnz rbx, rsi
and rbx, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rbx], -21
and rbx, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rbx], 51
and rax, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rax], dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
