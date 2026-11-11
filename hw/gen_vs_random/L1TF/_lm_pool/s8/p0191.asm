.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
inc dl
sub dil, -39
and rax, 0b1111111111111 # instrumentation
mov edi, dword ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
add sil, byte ptr [r14 + rcx]
cmp rsi, 87
and rsi, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rsi]
or rax, rdi
add dl, cl
xchg al, dil
and rsi, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rsi], 12
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
