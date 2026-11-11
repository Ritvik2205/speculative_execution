.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rcx], 4
and rbx, 0b1111111111111 # instrumentation
sub sil, byte ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rdi], 26
and rax, 0b1111111111000 # instrumentation
and di, 0b111 # instrumentation
lock btc word ptr [r14 + rax], di
and rsi, 0b1111111111111 # instrumentation
add rbx, qword ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
bts word ptr [r14 + rbx], 92
sub dl, -34
and rax, 0b1111111111111 # instrumentation
sub cl, byte ptr [r14 + rax]
adc al, dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
