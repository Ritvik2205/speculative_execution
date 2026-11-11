.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
test word ptr [r14 + rdi], 14
add bx, dx
and rsi, 0b1111111111111 # instrumentation
cmovp rbx, qword ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
xor eax, dword ptr [r14 + rdi]
adc edi, edx
and rbx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rbx], edi
and rax, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rax], -36
and rbx, 0b1111111111111 # instrumentation
neg byte ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
cmovs ax, word ptr [r14 + rsi]
mov cl, dil
bt ebx, 87
and rdi, 0b1111111111000 # instrumentation
lock inc qword ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rbx], 46
lea rax, qword ptr [rdi + rdx]
and rax, 0b1111111111111 # instrumentation
or rcx, qword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
mul word ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
