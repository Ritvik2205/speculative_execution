.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
inc al
mov bl, cl
and ax, 32540
and rdi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdi], cl
jnz .bb_0.1
jmp .exit_0
.bb_0.1:
lea rdi, qword ptr [rcx + rdx]
add sil, 2
sub al, bl
cmp bl, dl
and cl, -57
and bl, dl
and rdi, 0b1111111111111 # instrumentation
sub bl, byte ptr [r14 + rdi]
sub cl, -21
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
