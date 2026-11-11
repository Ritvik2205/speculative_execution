.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
sub qword ptr [r14 + rax], rbx
dec cl
xor al, sil
sub al, 96
and rcx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
mov rax, qword ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdi], sil
cmp al, 75
cmp ax, -22704
sub cl, dl
and al, -124
or cl, 83
sub al, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
