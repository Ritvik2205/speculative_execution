.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea rsi, qword ptr [rdx]
or ecx, 0b1000000000000000000000000000000 # instrumentation
bsf ebx, ecx
and rbx, 0b1111111111111 # instrumentation
add byte ptr [r14 + rbx], -108
lea rax, qword ptr [rcx]
and rbx, 0b1111111111111 # instrumentation
or si, word ptr [r14 + rbx]
or dl, 0b1000 # instrumentation
and dl, 0b11111000 # instrumentation
movzx edi, dl
dec cl
and rcx, 0b1111111111111 # instrumentation
and qword ptr [r14 + rcx], 117
jnbe .bb_0.1
jmp .exit_0
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
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
