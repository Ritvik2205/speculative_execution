.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
or rsi, qword ptr [r14 + rdi]
or al, -78
and rdx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdx], 47
and rdi, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rdi], 7
and rdx, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rdx]
xor al, 34
and rdx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rdx], 6
and ax, -16061
and rcx, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rcx], 0
and rsi, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rsi], 2
test cl, -123
and rcx, 0b1111111111111 # instrumentation
xor rdx, qword ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
