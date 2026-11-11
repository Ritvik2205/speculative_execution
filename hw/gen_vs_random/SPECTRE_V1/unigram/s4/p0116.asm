.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea bx, qword ptr [rax + rdi + 41]
and rsi, 0b1111111111111 # instrumentation
add rax, qword ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rdx], cl
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], 81
jnp .bb_0.1
jmp .exit_0
.bb_0.1:
or dl, 41
imul edx, edx, 37
sub eax, -882981501
cmovnp rdx, rax
mov cl, dil
sbb al, bl
mov bl, al
and dil, -93
and rcx, 0b1111111111111 # instrumentation
and rbx, 0b111 # instrumentation
btc qword ptr [r14 + rcx], rbx
and rcx, 0b1111111111111 # instrumentation
adc word ptr [r14 + rcx], 74
and rbx, 0b1111111111111 # instrumentation
or ecx, dword ptr [r14 + rbx]
cmovb bx, di
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
