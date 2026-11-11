.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], dl
dec bl
and cl, 86
xor al, -74
and rbx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rbx], dl
sbb dl, bl
and bl, al
and rcx, 0b1111111111111 # instrumentation
mov ebx, dword ptr [r14 + rcx]
or rax, -3
mov dil, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
