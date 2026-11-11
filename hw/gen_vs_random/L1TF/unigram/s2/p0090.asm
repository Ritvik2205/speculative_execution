.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
sbb word ptr [r14 + rdx], -119
and rdx, 0b1111111111111 # instrumentation
sets byte ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
cmovnp dx, word ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
and rcx, qword ptr [r14 + rax]
or al, -57
and rax, 0b1111111111111 # instrumentation
sub rcx, qword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
and al, byte ptr [r14 + rax]
xor rsi, 29
jmp .bb_0.1
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
mov dl, byte ptr [r14 + rsi]
cmovl edi, edx
seto sil
adc bl, -14
sub rax, -1628299544
bt esi, eax
xor ax, 0
lea esi, qword ptr [rcx + rsi + 41]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
