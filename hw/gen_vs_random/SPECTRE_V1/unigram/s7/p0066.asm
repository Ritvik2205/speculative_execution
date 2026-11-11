.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
setns dl
and rbx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rbx], -31
adc dil, 88
lea ecx, qword ptr [rdx + rsi]
and rax, 0b1111111111111 # instrumentation
adc word ptr [r14 + rax], cx
and rsi, 0b1111111111111 # instrumentation
and edi, dword ptr [r14 + rsi]
add cl, 0 # instrumentation
adc dil, cl
jnb .bb_0.1
jmp .exit_0
.bb_0.1:
lea rax, qword ptr [rcx + rdx + 53]
nop
and rdx, 0b1111111111111 # instrumentation
cmovle rdi, qword ptr [r14 + rdx]
cmp si, -11
xor sil, sil
lea cx, qword ptr [rcx]
lea cx, qword ptr [rcx]
not esi
and rcx, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rcx], 84
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
