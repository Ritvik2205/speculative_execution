.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
btc word ptr [r14 + rax], 2
xor dl, -59
and rbx, 0b1111111111000 # instrumentation
and di, 0b111 # instrumentation
lock btc word ptr [r14 + rbx], di
xor cl, 83
and rcx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rcx], -108
test edx, -1561252782
or al, 74
xor dl, -59
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], 194454182
and rdi, 0b1111111111111 # instrumentation
bt word ptr [r14 + rdi], 82
and ebx, 96
and rdx, 0b1111111111111 # instrumentation
and rsi, 0b111 # instrumentation
bt qword ptr [r14 + rdx], rsi
and rdi, 0b1111111111111 # instrumentation
or rax, qword ptr [r14 + rdi]
jmp .bb_0.1
.bb_0.1:
test dl, -119
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
