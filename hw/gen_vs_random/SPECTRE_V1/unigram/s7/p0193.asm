.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rdx]
and rax, 0b1111111111000 # instrumentation
lock inc qword ptr [r14 + rax]
and cl, dil
and rdi, 0b1111111111111 # instrumentation
sbb ebx, dword ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
neg byte ptr [r14 + rcx]
imul ax, dx, 59
and rax, 0b1111111111111 # instrumentation
mov dx, word ptr [r14 + rax]
bt eax, 78
jl .bb_0.1
jmp .exit_0
.bb_0.1:
sub di, 85
and rdx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdx], 90
and cl, -57
and rcx, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rcx], 99
bt eax, esi
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], al
and rsi, 0b1111111111000 # instrumentation
lock sbb qword ptr [r14 + rsi], 79
and rdi, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rdi], dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
