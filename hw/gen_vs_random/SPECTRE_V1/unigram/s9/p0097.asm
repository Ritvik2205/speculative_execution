.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
bt word ptr [r14 + rsi], 13
lea rdi, qword ptr [rdx + rdi + 43]
and rax, 0b1111111111111 # instrumentation
sbb ebx, dword ptr [r14 + rax]
sbb edx, eax
xchg al, dil
and rdx, 0b1111111111111 # instrumentation
cmovnz rcx, qword ptr [r14 + rdx]
jnl .bb_0.1
jmp .exit_0
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
cmovbe rbx, qword ptr [r14 + rdi]
and rdi, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rdi], -115
xor ecx, edx
and rdx, 0b1111111111111 # instrumentation
and rcx, 0b111 # instrumentation
bt qword ptr [r14 + rdx], rcx
and rax, 0b1111111111111 # instrumentation
lea esi, qword ptr [rax + rsi]
add cl, -80 # instrumentation
and rdx, 0b1111111111111 # instrumentation
sets byte ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
mov bl, byte ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
cmovnl eax, dword ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
cmovz di, word ptr [r14 + rdi]
add bl, 112 # instrumentation
adc bl, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
