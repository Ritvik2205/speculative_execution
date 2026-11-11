.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
xor rsi, qword ptr [r14 + rax]
adc al, -61
and eax, -409673666
and rcx, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rcx], 100
and rcx, 0b1111111111111 # instrumentation
mov dl, byte ptr [r14 + rcx]
cmp cl, -89
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
add qword ptr [r14 + rbx], 75
and rdx, 0b1111111111111 # instrumentation
sub ax, word ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
or bl, byte ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
