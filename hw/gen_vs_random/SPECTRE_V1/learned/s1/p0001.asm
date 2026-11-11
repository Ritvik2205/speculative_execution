.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add sil, 2
sbb al, 118
mov bl, cl
sub al, -66
test dil, -116
and dl, cl
add al, -13
and rcx, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rcx], 24
xchg al, bl
and rcx, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rcx]
and rdi, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rdi], 10
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
