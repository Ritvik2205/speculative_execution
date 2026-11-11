.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], 913863268
lea edx, qword ptr [rcx + rsi]
add bl, -118 # instrumentation
cmovp bx, bx
inc rsi
jnp .bb_0.1
jmp .exit_0
.bb_0.1:
adc bx, 51
inc si
neg rcx
and rdi, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rdi], 98
and rcx, 0b1111111111111 # instrumentation
or word ptr [r14 + rcx], 0b1000000000000000 # instrumentation
bsf ax, word ptr [r14 + rcx]
adc sil, -77
and bl, cl
or ecx, 1 # instrumentation
and edx, ecx # instrumentation
shr edx, 1 # instrumentation
div ecx
or bl, 72
and rdi, 0b1111111111111 # instrumentation
mov si, word ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rdi], eax
bt ecx, 204
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
