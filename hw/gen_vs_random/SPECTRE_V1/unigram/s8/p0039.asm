.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sbb bl, bl
lea rdx, qword ptr [rdi]
cmp dl, sil
and rax, 0b1111111111111 # instrumentation
sbb cl, byte ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
cmovnb ax, word ptr [r14 + rax]
jnbe .bb_0.1
jmp .exit_0
.bb_0.1:
and rsi, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rsi], 57
xor rdi, 71
and rbx, 0b1111111111111 # instrumentation
sbb ecx, dword ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rdx], -105
lea rbx, qword ptr [rdx + rdi + 18]
lea rbx, qword ptr [rdx + rdx + 66]
and rax, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rax], dx
and rsi, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rsi], 98
or bl, 1 # instrumentation
mov ax, 1 # instrumentation
div bl
and rdx, 0b1111111111111 # instrumentation
dec qword ptr [r14 + rdx]
cmovnle ebx, edx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
