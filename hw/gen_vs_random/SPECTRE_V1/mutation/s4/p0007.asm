.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rdi], -45
cmovo rsi, rsi
cmp rax, rsi
add dl, -47 # instrumentation
sbb cl, 115
imul rsi, rax, 76
jnle .bb_0.1
jmp .exit_0
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rdi], 98
lea dx, qword ptr [rcx + rbx + 54281]
and rdi, 0b1111111111000 # instrumentation
lock adc qword ptr [r14 + rdi], -16
and rsi, 0b1111111111111 # instrumentation
and word ptr [r14 + rsi], cx
bt ecx, eax
and rdi, 0b1111111111111 # instrumentation
or word ptr [r14 + rdi], -107
lea edi, qword ptr [rax]
and rax, 0b1111111111000 # instrumentation
lock not word ptr [r14 + rax]
cmp ax, -11439
neg rdx
and rdi, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rdi], -115
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
