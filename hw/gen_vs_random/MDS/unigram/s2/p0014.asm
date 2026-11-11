.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
and word ptr [r14 + rsi], bx
and di, bx
and rax, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rax], 7
and rax, 0b1111111111000 # instrumentation
and rbx, 0b111 # instrumentation
lock btc qword ptr [r14 + rax], rbx
and rdx, 0b1111111111111 # instrumentation
and rdi, qword ptr [r14 + rdx]
cmovbe ax, cx
and rax, 0b1111111111111 # instrumentation
or word ptr [r14 + rax], 20
and rbx, 0b1111111111111 # instrumentation
or ebx, dword ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rdx], ebx
and rsi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rsi], rsi
btc ax, bx
and rbx, 0b1111111111111 # instrumentation
and word ptr [r14 + rbx], 101
and rax, 0b1111111111111 # instrumentation
cmovs cx, word ptr [r14 + rax]
btr edx, 197
and dl, 53 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovl rcx, qword ptr [r14 + rax]
and rdi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdi], 82
and rsi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rsi], ebx
xor bl, cl
and rbx, 0b1111111111111 # instrumentation
and si, word ptr [r14 + rbx]
xor ax, -6793
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
