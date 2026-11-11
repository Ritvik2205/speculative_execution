.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, -44
and rbx, 0b1111111111111 # instrumentation
sub cl, byte ptr [r14 + rbx]
jnp .bb_0.1
jmp .bb_0.2
.bb_0.1:
lea ax, qword ptr [rbx]
jns .bb_0.2
jmp .exit_0
.bb_0.2:
sbb cl, al
and rcx, 0b1111111111111 # instrumentation
sub bl, byte ptr [r14 + rcx]
xor al, 54
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
