.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
xor eax, dword ptr [r14 + rsi]
or cl, -78
and rsi, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rsi], 1
and rdi, 0b1111111111111 # instrumentation
cmovnb ecx, dword ptr [r14 + rdi]
and al, -68
and rcx, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rcx], 69
and bl, 89
and rdi, 0b1111111111111 # instrumentation
mov dx, word ptr [r14 + rdi]
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
movzx rdx, word ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rdx], 7
and rsi, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rsi], 92
adc bl, 86
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
