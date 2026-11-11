.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
movsx ebx, cx
and rax, 0b1111111111111 # instrumentation
add byte ptr [r14 + rax], -23
test dl, al
and sil, 37
xor cl, bl
jnle .bb_0.1
jmp .exit_0
.bb_0.1:
cmovs cx, di
add edx, 56
and rdx, 0b1111111111111 # instrumentation
bts word ptr [r14 + rdx], 47
test cl, 77
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
