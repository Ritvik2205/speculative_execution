.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
cmovbe rcx, qword ptr [r14 + rdi]
lea rdx, qword ptr [rsi + rcx + 35]
and rsi, 0b1111111111111 # instrumentation
imul edx, dword ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rbx], cl
and rcx, 0b1111111111111 # instrumentation
bts word ptr [r14 + rcx], 75
jnle .bb_0.1
jmp .exit_0
.bb_0.1:
sbb cl, 105
and rbx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rbx], 78
and rax, 0b1111111111111 # instrumentation
adc qword ptr [r14 + rax], rcx
and rax, 0b1111111111111 # instrumentation
and byte ptr [r14 + rax], al
add sil, 43 # instrumentation
and rsi, 0b1111111111111 # instrumentation
setb byte ptr [r14 + rsi]
cmovb ecx, edx
cmp bl, -114
imul rbx, rdi
and rdi, 0b1111111111000 # instrumentation
lock sbb qword ptr [r14 + rdi], -38
sub dl, 96
and rdi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdi], 0b1000000000000000000000000000000 # instrumentation
bsr rdx, qword ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
