.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
inc rsi
and rcx, 0b1111111111111 # instrumentation
xor rdx, qword ptr [r14 + rcx]
test edx, -1561252782
and rsi, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rsi]
btr cx, di
cmovnp rbx, rcx
and bl, 68
bts rbx, rdx
test bl, -14
test dil, sil
or dil, cl
test dl, -85
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
