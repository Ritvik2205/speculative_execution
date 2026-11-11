.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
neg cl
sbb rcx, 65
and rdx, 0b1111111111111 # instrumentation
cmp bl, byte ptr [r14 + rdx]
mov eax, 96
and rax, 0b1111111111111 # instrumentation
imul edx, dword ptr [r14 + rax], 94
and rsi, 0b1111111111111 # instrumentation
adc bx, word ptr [r14 + rsi]
lea rsi, qword ptr [rax]
and rax, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rax]
jmp .bb_0.1
.bb_0.1:
cmp dl, -56
and rdi, 0b1111111111111 # instrumentation
imul ecx, dword ptr [r14 + rdi]
or cl, 1 # instrumentation
mov ax, 1 # instrumentation
div cl
test rdi, rdx
or ecx, 0b1000 # instrumentation
and cl, 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv ecx
cbw
and rax, 0b1111111111111 # instrumentation
cmovo rdx, qword ptr [r14 + rax]
add bl, -49 # instrumentation
adc bl, dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
