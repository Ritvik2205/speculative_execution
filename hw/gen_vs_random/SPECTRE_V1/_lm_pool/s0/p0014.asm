.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
sub word ptr [r14 + rsi], -34
and rdi, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rdi], -1
and rcx, 0b1111111111111 # instrumentation
cmovnp rdi, qword ptr [r14 + rcx]
sub al, cl
cmovnle rdi, rsi
sub al, 63
and dl, -92
add bl, dl
and rax, 0b1111111111111 # instrumentation
xor rbx, qword ptr [r14 + rax]
lea ax, qword ptr [rbx + rsi]
add dl, 47
add dl, bl
jle .bb_0.1
jmp .exit_0
.bb_0.1:
sbb dl, cl
and rcx, 0b1111111111111 # instrumentation
cmovno rax, qword ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
