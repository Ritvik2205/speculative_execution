.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rdx], di
xor rax, 376589024
or edx, 48
sub si, 32
bts ax, 29
adc ax, 24404
jmp .bb_0.1
.bb_0.1:
or bl, 1 # instrumentation
mov ax, 1 # instrumentation
div bl
lea rax, qword ptr [rcx]
and rax, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rax], dl
sub al, cl
bt eax, 78
and rax, 0b1111111111111 # instrumentation
mov ebx, dword ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
