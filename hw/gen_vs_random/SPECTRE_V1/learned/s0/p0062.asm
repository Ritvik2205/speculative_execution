.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
mov dl, cl
sub di, 50
cmp al, dil
sbb dl, cl
mov ax, 90
and rcx, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rcx]
sbb dl, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
