.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rdi], 7
and rsi, 0b1111111111111 # instrumentation
and rbx, 0b111 # instrumentation
bt qword ptr [r14 + rsi], rbx
xor si, 80
or cl, 119
and rbx, 0b1111111111111 # instrumentation
xor rsi, qword ptr [r14 + rbx]
btc rax, 59
jmp .bb_0.1
.bb_0.1:
and rdi, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rdi], ebx
and rax, 0b1111111111111 # instrumentation
xor bl, byte ptr [r14 + rax]
test dil, cl
or rax, 1461812833
jmp .bb_0.2
.bb_0.2:
test rbx, 13
bt ax, dx
not bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
