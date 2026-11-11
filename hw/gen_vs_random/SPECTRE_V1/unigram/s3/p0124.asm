.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rcx], 40
and rdi, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rdi], 74
and rbx, 0b1111111111111 # instrumentation
sbb rcx, qword ptr [r14 + rbx]
and rbx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rbx], dl
and rax, 0b1111111111111 # instrumentation
sub qword ptr [r14 + rax], -97
and rsi, 0b1111111111111 # instrumentation
cmovnle rax, qword ptr [r14 + rsi]
or cl, al
and rdx, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rdx]
jnle .bb_0.1
jmp .exit_0
.bb_0.1:
sbb bl, dl
cmovno rax, rbx
and rcx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rcx], rdx
lea ax, qword ptr [rsi + rcx]
cmovno edx, ebx
sets cl
and rax, 0b1111111111111 # instrumentation
and ecx, dword ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
