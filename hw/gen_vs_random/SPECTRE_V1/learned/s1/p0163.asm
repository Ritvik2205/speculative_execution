.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sub dil, -111
sbb dl, cl
add dil, 72
test al, 84
lea ax, qword ptr [rbx]
mov cl, bl
cmp bl, dl
and rdx, 0b1111111111111 # instrumentation
mov di, word ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
cmovnle rdi, qword ptr [r14 + rdx]
jmp .bb_0.1
.bb_0.1:
and rdi, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rdi], dil
lea rax, qword ptr [rbx]
lea bx, qword ptr [rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
