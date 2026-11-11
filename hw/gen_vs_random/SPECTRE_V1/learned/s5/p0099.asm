.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -31 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovp ax, word ptr [r14 + rdx]
test bl, -8
and rcx, 0b1111111111111 # instrumentation
add al, byte ptr [r14 + rcx]
jnle .bb_0.1
jmp .bb_0.2
.bb_0.1:
jmp .bb_0.2
.bb_0.2:
setnle cl
jnle .bb_0.3
jmp .bb_0.4
.bb_0.3:
add bl, -95
and dl, -92
xor dl, cl
sbb rcx, 68
sub bl, -6
js .bb_0.4
jmp .exit_0
.bb_0.4:
and cx, 14
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
