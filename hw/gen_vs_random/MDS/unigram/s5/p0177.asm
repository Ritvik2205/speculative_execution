.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and cl, cl
btc rax, rsi
and rdx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdx], dl
and rdx, 0b1111111111111 # instrumentation
cmovo di, word ptr [r14 + rdx]
cmovnz ax, di
test bl, sil
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], 10
and rax, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rax], cl
bt ecx, 75
and cl, -81 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovnp rcx, qword ptr [r14 + rsi]
btc di, cx
xor dil, -3
and rax, 0b1111111111111 # instrumentation
or rdi, qword ptr [r14 + rax]
cmovl eax, ebx
and rbx, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rbx], 5
and rsi, rsi
and rbx, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rbx], 3
or bl, 100
and rax, 0b1111111111111 # instrumentation
or word ptr [r14 + rax], si
xor si, 91
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
