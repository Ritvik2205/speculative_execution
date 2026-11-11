.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rcx], ax
mov dil, dl
and rdi, 0b1111111111111 # instrumentation
mov rcx, qword ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
or word ptr [r14 + rdi], 0b1000000000000000 # instrumentation
bsf dx, word ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], 1 # instrumentation
and dx, word ptr [r14 + rbx] # instrumentation
shr dx, 1 # instrumentation
div word ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdi], edx
test ebx, -1465665890
adc eax, eax
jnp .bb_0.1
jmp .exit_0
.bb_0.1:
adc dil, 10
cmovl eax, edi
and rsi, 0b1111111111111 # instrumentation
xor rcx, qword ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rdx], -113
setp cl
sub si, 32
and rsi, 0b1111111111111 # instrumentation
imul ax, word ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
