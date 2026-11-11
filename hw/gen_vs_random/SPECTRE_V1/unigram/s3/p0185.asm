.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111000 # instrumentation
lock inc qword ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rdi], esi
adc bl, 88
cmovbe di, si
and rax, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rax], al
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], sil
or cl, cl
cmovno rdi, rdi
mov al, 7
and rax, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rax], rax
js .bb_0.1
jmp .exit_0
.bb_0.1:
sub dil, -111
sbb al, bl
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], esi
bt edi, 134
and rbx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rbx], rbx
xchg ecx, esi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
