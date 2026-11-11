.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and si, -121
xor al, 55
and ax, -16061
xor eax, 571592471
or al, -75
and rcx, 0b1111111111111 # instrumentation
test word ptr [r14 + rcx], 2908
test dl, -85
and rdx, 0b1111111111111 # instrumentation
cmovp ecx, dword ptr [r14 + rdx]
or rax, -689609688
xor si, 91
and dil, dil
and rsi, 0b1111111111111 # instrumentation
and rax, 0b111 # instrumentation
bt qword ptr [r14 + rsi], rax
xor rdx, -59
bt ax, bx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
