.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
cmovns rdx, qword ptr [r14 + rax]
or dil, -76
or bl, dl
cmovnb dx, cx
and rbx, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rbx], 2
not bl
btc rsi, rsi
and rsi, 0b1111111111111 # instrumentation
or dil, byte ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
and rdi, 0b111 # instrumentation
bt qword ptr [r14 + rdx], rdi
and rax, 0b1111111111111 # instrumentation
cmovz ax, word ptr [r14 + rax]
cmovp edx, eax
and rdx, 0b1111111111111 # instrumentation
cmovle eax, dword ptr [r14 + rdx]
and cx, -2
and rbx, 0b1111111111111 # instrumentation
cmovnbe rsi, qword ptr [r14 + rbx]
btr rdx, 48
and rdi, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rdi], 73
and rsi, 0b1111111111111 # instrumentation
bts word ptr [r14 + rsi], 4
and rbx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rbx], 0b1000000000000000000000000000000 # instrumentation
bsf ebx, dword ptr [r14 + rbx]
cmovbe rdx, rdx
xor cl, -13
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
