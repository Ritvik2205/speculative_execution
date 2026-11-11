.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
inc rcx
setz dl
and rcx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rcx], dl
and rcx, 0b1111111111000 # instrumentation
and ax, 0b111 # instrumentation
lock btc word ptr [r14 + rcx], ax
or cl, bl
or cl, 105
cmp si, 76
and rdx, 0b1111111111000 # instrumentation
lock inc byte ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
