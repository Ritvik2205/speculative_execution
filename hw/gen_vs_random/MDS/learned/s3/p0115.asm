.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rdx], 7
and rcx, 0b1111111111111 # instrumentation
or rax, qword ptr [r14 + rcx]
or bl, 13
and dil, cl
cmovle si, dx
xor al, 99
or dil, -71
or dl, dil
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdx], cl
and rbx, 0b1111111111111 # instrumentation
and rcx, 0b111 # instrumentation
bt qword ptr [r14 + rbx], rcx
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
