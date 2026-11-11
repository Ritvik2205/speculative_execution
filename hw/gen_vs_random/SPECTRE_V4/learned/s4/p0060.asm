.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
mov rcx, qword ptr [r14 + rax]
test eax, 1340292467
sub dl, -16
add bl, sil
or dil, 89
cmp rax, 40
cmp rdi, 28
dec dl
sub al, 69
or cl, 83
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], bl
test al, sil
and sil, -84
xor cx, -80
cmp al, -116
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
