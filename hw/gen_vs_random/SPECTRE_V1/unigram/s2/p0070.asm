.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
add qword ptr [r14 + rcx], rax
and rcx, 0b1111111111111 # instrumentation
adc qword ptr [r14 + rcx], rsi
and rdi, 0b1111111111111 # instrumentation
or ebx, dword ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
inc word ptr [r14 + rdi]
lea rsi, qword ptr [rdx + rcx + 36993]
jp .bb_0.1
jmp .exit_0
.bb_0.1:
and dl, -109
and rdi, 0b1111111111111 # instrumentation
mov rbx, qword ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
inc dword ptr [r14 + rax]
xor cl, bl
and rsi, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rsi], rcx
sbb esi, 17
neg edx
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], sil
and rcx, 0b1111111111111 # instrumentation
mov rcx, qword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
adc cl, byte ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
setnl byte ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
