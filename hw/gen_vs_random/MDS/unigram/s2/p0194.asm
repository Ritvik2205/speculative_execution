.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
cmovnz rax, qword ptr [r14 + rax]
cmovl rcx, rsi
and cl, 7 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovnb dx, word ptr [r14 + rdi]
cmovnbe rdi, rdi
not eax
and al, 75
cmovnp eax, esi
btc bx, si
xor al, bl
and rdx, 0b1111111111111 # instrumentation
or edx, dword ptr [r14 + rdx]
and dl, -26 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovno rsi, qword ptr [r14 + rdx]
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111000 # instrumentation
lock not word ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], dx
and rsi, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rsi], 74
and rbx, 0b1111111111111 # instrumentation
xor di, word ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rsi], 99
and edx, -44
and rsi, 0b1111111111111 # instrumentation
bt word ptr [r14 + rsi], 5
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], dil
and al, -83 # instrumentation
cmovnp rdx, rdi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
