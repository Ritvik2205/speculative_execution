.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rax], -86
and rcx, 0b1111111111111 # instrumentation
sub al, byte ptr [r14 + rcx]
adc si, 6
xor ax, 913
lea rdx, qword ptr [rcx + rbx + 40]
cmp bl, sil
jnle .bb_0.1
jmp .exit_0
.bb_0.1:
sbb ecx, 41
lea bx, qword ptr [rsi + rdx]
and rax, 0b1111111111111 # instrumentation
mov ebx, dword ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
