.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor al, -26
and rdx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdx], 56
or dl, -89
xor rdi, -9
xor dil, cl
test eax, 1287331633
xor dl, -59
and dl, -73
and ax, -122
btr cx, 9
or rsi, 85
and rdx, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rdx], 0
and rcx, 0b1111111111111 # instrumentation
xor rdx, qword ptr [r14 + rcx]
test cl, 62
or dil, 16
cmovnp rsi, rdi
and di, 91
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
