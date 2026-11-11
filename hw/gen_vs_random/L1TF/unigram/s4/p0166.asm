.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add sil, 113 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovl rbx, qword ptr [r14 + rsi]
btr dx, 1
and rax, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rax], -128
mov bx, 49
add cl, -34 # instrumentation
setl dl
sub dil, 95
and rbx, 0b1111111111111 # instrumentation
neg qword ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rdi], dl
sub al, 28
and bl, sil
and rbx, 0b1111111111111 # instrumentation
adc rdx, qword ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
movzx ebx, byte ptr [r14 + rdi]
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], cl
and rbx, 0b1111111111111 # instrumentation
adc ebx, dword ptr [r14 + rbx]
xchg ecx, eax
and rdx, 0b1111111111111 # instrumentation
sbb word ptr [r14 + rdx], si
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
