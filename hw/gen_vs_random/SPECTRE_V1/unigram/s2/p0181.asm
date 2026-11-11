.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rbx], -77
and rax, 0b1111111111111 # instrumentation
add dword ptr [r14 + rax], 66
and rsi, 0b1111111111111 # instrumentation
adc cl, byte ptr [r14 + rsi]
neg al
and rax, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rax], 1
and rsi, 21
jp .bb_0.1
jmp .exit_0
.bb_0.1:
or edx, 0b1000000000000000000000000000000 # instrumentation
bsf eax, edx
and rcx, rcx
xor dil, -37
imul ebx, ebx, 119
xor rdi, 82
and rsi, 0b1111111111111 # instrumentation
imul word ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
setnbe byte ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rdi], cl
cmp dil, al
cmovl rbx, rbx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
