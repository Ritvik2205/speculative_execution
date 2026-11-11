.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea cx, qword ptr [rcx]
mov al, -28
sub bl, -6
and rdi, 0b1111111111111 # instrumentation
sub dl, byte ptr [r14 + rdi]
cmp rdi, 55
sub dil, al
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], dl
and rdi, 0b1111111111111 # instrumentation
sub al, byte ptr [r14 + rdi]
add dl, dil
mov al, bl
sbb al, -107
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
