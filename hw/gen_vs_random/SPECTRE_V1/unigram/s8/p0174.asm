.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
adc dl, -49
imul rax, rdx, 96
or bl, 43
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], cl
and rax, 0b1111111111111 # instrumentation
cmovnle edx, dword ptr [r14 + rax]
lea rax, qword ptr [rax + rdx]
and al, 33
jnp .bb_0.1
jmp .exit_0
.bb_0.1:
and rcx, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rcx], rax
and rsi, 0b1111111111111 # instrumentation
xor ax, word ptr [r14 + rsi]
mov ebx, 68
lea rax, qword ptr [rdx + rax + 98]
and rdi, 0b1111111111111 # instrumentation
xor word ptr [r14 + rdi], si
add al, 41 # instrumentation
and rcx, 0b1111111111111 # instrumentation
setnb byte ptr [r14 + rcx]
and rax, 0b1111111111000 # instrumentation
lock adc dword ptr [r14 + rax], ebx
and rdi, 0b1111111111000 # instrumentation
xchg word ptr [r14 + rdi], di
cmp al, 62
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
