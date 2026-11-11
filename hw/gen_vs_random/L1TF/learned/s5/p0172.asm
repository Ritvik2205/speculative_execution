.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -31 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovp cx, word ptr [r14 + rdx]
xor dl, 9
or cx, cx
sub dil, -39
sub al, 9
mov al, bl
test sil, 29
and al, dil
and rax, 0b1111111111111 # instrumentation
mov rdi, qword ptr [r14 + rax]
mov dl, bl
and rdi, 0b1111111111111 # instrumentation
add bl, byte ptr [r14 + rdi]
lea rcx, qword ptr [rax]
sbb al, -23
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
