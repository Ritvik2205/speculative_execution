.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, 92 # instrumentation
and rax, 0b1111111111111 # instrumentation
adc rsi, qword ptr [r14 + rax]
add eax, -2019837038
and rsi, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rsi], -19
and rax, 0b1111111111111 # instrumentation
inc qword ptr [r14 + rax]
jnb .bb_0.1
jmp .bb_0.2
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rcx], 64
lea edi, qword ptr [rax + rsi + 44]
jnb .bb_0.2
jmp .bb_0.3
.bb_0.2:
and rbx, 0b1111111111111 # instrumentation
mov rax, qword ptr [r14 + rbx]
jp .bb_0.3
jmp .exit_0
.bb_0.3:
add cl, 41 # instrumentation
and rcx, 0b1111111111000 # instrumentation
xchg dword ptr [r14 + rcx], esi
and rdi, 0b1111111111111 # instrumentation
and cx, 0b111 # instrumentation
bt word ptr [r14 + rdi], cx
mov bl, al
and rax, 0b1111111111111 # instrumentation
adc dl, byte ptr [r14 + rax]
mul dil
add cl, -117 # instrumentation
lea rdi, qword ptr [rcx]
and rsi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rsi], 1 # instrumentation
and rdx, qword ptr [r14 + rsi] # instrumentation
shr rdx, 1 # instrumentation
div qword ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
setz byte ptr [r14 + rdi]
bts rax, 140
and rsi, 0b1111111111111 # instrumentation
cmovl esi, dword ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
