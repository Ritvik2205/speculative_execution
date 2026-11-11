.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
mov ebx, dword ptr [r14 + rax]
and rax, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rax]
xor bl, -38
and rax, 0b1111111111111 # instrumentation
xor sil, byte ptr [r14 + rax]
adc al, dl
and rdi, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rdi], sil
and rcx, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rcx]
sub al, bl
mov dl, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
