.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and dl, -103 # instrumentation
cmovbe dx, dx
sub dil, bl
and rdi, 0b1111111111111 # instrumentation
sub dl, byte ptr [r14 + rdi]
sub cl, -47
and bl, 87
and bl, -43
jl .bb_0.1
jmp .exit_0
.bb_0.1:
mov bl, al
xor bl, dl
lea cx, qword ptr [rdi + rcx + 17]
add bl, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
