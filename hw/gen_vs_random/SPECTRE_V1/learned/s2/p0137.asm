.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dil, al
dec bl
sub cl, al
lea bx, qword ptr [rcx]
jnbe .bb_0.1
jmp .exit_0
.bb_0.1:
and rax, -273199823
and rax, 0b1111111111111 # instrumentation
cmovb rdx, qword ptr [r14 + rax]
mov al, cl
add al, -47
test al, -71
sbb bl, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
