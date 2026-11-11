.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
sub word ptr [r14 + rdi], -36
mov bl, -31
add dl, 47
jp .bb_0.1
jmp .exit_0
.bb_0.1:
mov al, cl
and rcx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rcx], bl
and rcx, -29
sub cl, dl
lea dx, qword ptr [rbx + rsi]
and rdx, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rdx], rcx
sbb al, -107
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
