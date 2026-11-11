.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
and dword ptr [r14 + rdi], -69
and rdi, 0b1111111111111 # instrumentation
adc cl, byte ptr [r14 + rdi]
test dil, -116
lea ecx, qword ptr [rcx + rcx + 97]
sbb cl, cl
jnle .bb_0.1
jmp .exit_0
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
sub dil, byte ptr [r14 + rsi]
lea ax, qword ptr [rcx + rsi + 72]
test edx, 21
and rsi, 0b1111111111111 # instrumentation
movsx bx, byte ptr [r14 + rsi]
add bl, 104 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovs eax, dword ptr [r14 + rcx]
lea rdx, qword ptr [rbx]
and rax, 0b1111111111111 # instrumentation
or dl, byte ptr [r14 + rax]
add bl, 4 # instrumentation
and rax, 0b1111111111111 # instrumentation
setbe byte ptr [r14 + rax]
cmovnl rax, rdx
sub dl, cl
sbb cl, 105
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
