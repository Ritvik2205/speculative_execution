.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
xor eax, dword ptr [r14 + rcx]
cmp edi, 3
sub dl, -16
add cl, al
xor si, di
cmp rdi, 28
cmp al, -122
add cl, dl
or cl, dil
mov cl, bl
and rdi, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rdi], rbx
or sil, -47
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
