.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or al, dl
or bl, cl
and rdi, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rdi]
and dl, cl
adc dx, 96
sub dl, dl
and rcx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rcx], edx
and rdi, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rdi], al
add cl, dil
dec bl
and di, -65
sub rax, 2016976449
xor dl, -66
xor cx, -80
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
