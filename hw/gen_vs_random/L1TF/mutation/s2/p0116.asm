.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, 44 # instrumentation
cmovns si, ax
and rcx, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rcx], esi
sub dil, -70
lea rdx, qword ptr [rcx + rdi]
and rsi, 0b1111111111111 # instrumentation
and bl, byte ptr [r14 + rsi]
and rcx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rcx], bl
lea dx, qword ptr [rdi]
and rax, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
cmp edx, dword ptr [r14 + rax]
jmp .bb_0.1
.bb_0.1:
xchg bl, dl
and rsi, 0b1111111111111 # instrumentation
neg qword ptr [r14 + rsi]
sbb edx, edx
bswap eax
lea rax, qword ptr [rbx + rsi + 16229]
and rbx, 0b1111111111111 # instrumentation
cmp edx, dword ptr [r14 + rbx]
cmp al, -119
cmovnz rbx, rax
cmovbe eax, esi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
