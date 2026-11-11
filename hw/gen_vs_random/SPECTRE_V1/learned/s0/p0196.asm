.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and bl, -89 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovnle edi, dword ptr [r14 + rax]
add bl, -95
and rbx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rbx], 3
and rbx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rbx], -770247768
xor cl, al
xor sil, -33
setb sil
cmp cx, 19
test rax, -1638758413
cmp rdx, -19
and rsi, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rsi], 4
cmovb bx, cx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
