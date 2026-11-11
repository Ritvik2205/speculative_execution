.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
btc word ptr [r14 + rdx], 3
test edx, -372470678
xor al, -19
test dl, bl
and rsi, 0b1111111111111 # instrumentation
and rdi, 0b111 # instrumentation
bt qword ptr [r14 + rsi], rdi
and rcx, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rcx], si
or cl, -36
and rdx, 0b1111111111111 # instrumentation
or rax, qword ptr [r14 + rdx]
and eax, -829294476
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
test word ptr [r14 + rax], 31143
and rbx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rbx], 4
and rdx, 0b1111111111111 # instrumentation
bt word ptr [r14 + rdx], 1
and ax, 29207
jmp .bb_0.2
.bb_0.2:
btc di, si
and rsi, 0b1111111111111 # instrumentation
xor dl, byte ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
