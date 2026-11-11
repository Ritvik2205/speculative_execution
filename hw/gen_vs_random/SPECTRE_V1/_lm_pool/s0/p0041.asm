.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test sil, 47
and rax, 0b1111111111111 # instrumentation
sub word ptr [r14 + rax], 41
sub al, -1
and al, -54
add al, -13
and rcx, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rcx]
sbb ecx, 67
jnp .bb_0.1
jmp .exit_0
.bb_0.1:
bts ax, bx
and rsi, 0b1111111111111 # instrumentation
not qword ptr [r14 + rsi]
sbb dl, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
