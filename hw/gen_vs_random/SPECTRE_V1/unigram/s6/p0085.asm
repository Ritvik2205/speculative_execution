.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
adc sil, byte ptr [r14 + rbx]
bt rsi, 24
cmp rcx, 54
and rax, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rax], edx
and rdi, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rdi], ebx
and rax, 0b1111111111111 # instrumentation
setns byte ptr [r14 + rax]
cdq
and rdx, 0b1111111111000 # instrumentation
lock adc dword ptr [r14 + rdx], edx
cmovo bx, cx
sbb cl, 105
and rdx, 0b1111111111111 # instrumentation
add eax, dword ptr [r14 + rdx]
adc ax, 24404
jns .bb_0.1
jmp .exit_0
.bb_0.1:
add dl, 24 # instrumentation
lea rdx, qword ptr [rdx]
lea bx, qword ptr [rdx + rax + 53]
and rax, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rax], sil
and rax, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rax], 49
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
