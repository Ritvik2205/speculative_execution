.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or bl, 1 # instrumentation
mov ax, 1 # instrumentation
div bl
and rax, 0b1111111111111 # instrumentation
adc dl, byte ptr [r14 + rax]
mov cl, dl
sub bl, cl
and rsi, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rsi]
sbb bl, 79
cmp cl, 21
and rax, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rax], cl
and rax, 0b1111111111111 # instrumentation
imul bx, word ptr [r14 + rax], 98
inc eax
and rdx, 0b1111111111111 # instrumentation
mov edi, dword ptr [r14 + rdx]
and rax, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rax], 50
jns .exit_0
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
