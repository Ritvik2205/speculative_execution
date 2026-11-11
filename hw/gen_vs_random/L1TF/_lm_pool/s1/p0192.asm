.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test bl, -92
and rcx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rcx], al
add al, 93
xor dx, 70
and rdx, 0b1111111111111 # instrumentation
cmovb rax, qword ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
or word ptr [r14 + rdi], dx
and rax, 0b1111111111111 # instrumentation
cmovbe edx, dword ptr [r14 + rax]
sub rdx, 12
jp .bb_0.1
jmp .bb_0.2
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
sbb dx, word ptr [r14 + rsi]
jmp .bb_0.2
.bb_0.2:
sub al, -3
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
