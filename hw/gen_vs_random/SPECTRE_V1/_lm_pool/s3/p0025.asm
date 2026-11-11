.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or al, dil
cmovno dx, bx
test bl, -8
lea cx, qword ptr [rsi]
and rcx, 0b1111111111111 # instrumentation
movsx rdi, byte ptr [r14 + rcx]
sub cl, dil
jnz .bb_0.1
jmp .bb_0.2
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
add word ptr [r14 + rcx], dx
lea rdi, qword ptr [rbx]
jl .bb_0.2
jmp .exit_0
.bb_0.2:
lea rcx, qword ptr [rbx + rax]
setz cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
