.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
sub word ptr [r14 + rcx], 113
and rcx, 0b1111111111111 # instrumentation
btr word ptr [r14 + rcx], 5
jnp .bb_0.1
jmp .bb_0.2
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
cmovnb eax, dword ptr [r14 + rdi]
jns .bb_0.2
jmp .bb_0.3
.bb_0.2:
lea cx, qword ptr [rcx]
jl .bb_0.3
jmp .exit_0
.bb_0.3:
test al, -99
sbb eax, 1332762061
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
