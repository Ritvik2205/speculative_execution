.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sbb rcx, 42
and rdx, 0b1111111111111 # instrumentation
imul byte ptr [r14 + rdx]
lea cx, qword ptr [rbx + rax + 96]
cmp dl, 64
and rax, 0b1111111111111 # instrumentation
neg byte ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
btc word ptr [r14 + rcx], 3
adc edx, 35
add al, 71 # instrumentation
setp al
jmp .bb_0.1
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rdi], 24
lea rdi, qword ptr [rcx + rbx]
and al, 76
and rcx, 0b1111111111111 # instrumentation
mov di, word ptr [r14 + rcx]
cmovno dx, dx
neg cl
and rdx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rdx], 83
and rdx, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rdx], ebx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
