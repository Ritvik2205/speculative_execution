.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, -47 # instrumentation
sbb cl, 115
and rdi, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rdi], 44
imul rsi, rax, 76
cmovo rsi, rsi
cmp rax, rsi
jnle .bb_0.1
jmp .bb_0.2
.bb_0.1:
lea edi, qword ptr [rax]
and rdi, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rdi], -115
and rax, 0b1111111111000 # instrumentation
lock not word ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
or word ptr [r14 + rdi], -107
cmp ax, 7452
lea dx, qword ptr [rcx + rbx + 54281]
bt ecx, eax
and rdi, 0b1111111111000 # instrumentation
lock adc qword ptr [r14 + rdi], -16
neg rdx
and rdi, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rdi], 98
and rsi, 0b1111111111111 # instrumentation
and word ptr [r14 + rsi], cx
jmp .bb_0.2
.bb_0.2:
and rdi, 0b1111111111111 # instrumentation
imul edi, dword ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
sub word ptr [r14 + rsi], -34
test ax, dx
and rcx, 0b1111111111111 # instrumentation
setnbe byte ptr [r14 + rcx]
xchg ebx, edx
lea ebx, qword ptr [rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
