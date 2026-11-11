.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and sil, -103 # instrumentation
cmovbe si, si
and dl, -73
and rdx, 0b1111111111111 # instrumentation
xor rax, qword ptr [r14 + rdx]
and ax, -16061
and dx, 3
btr cx, 136
test cl, -123
or dil, -41
and rsi, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rsi]
xor al, 34
and dil, sil
and al, dil
and rdx, 0b1111111111111 # instrumentation
and rcx, 0b111 # instrumentation
bt qword ptr [r14 + rdx], rcx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
