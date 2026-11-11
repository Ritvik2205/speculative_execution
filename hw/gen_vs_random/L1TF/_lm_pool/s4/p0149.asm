.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and bl, 109 # instrumentation
cmovs cx, bx
add al, -46
and cl, cl
and rax, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rax], sil
btc bx, dx
xor rdx, rcx
cmp cl, -89
xor al, cl
xor cl, 89
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
