.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test ebx, ecx
lea eax, qword ptr [rsi + rsi + 97]
and rsi, 0b1111111111111 # instrumentation
cmovl rdi, qword ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rbx], 4
lea si, qword ptr [rbx + rax + 24]
adc rsi, 91
adc bl, 86
cmp dil, cl
and rdi, 0b1111111111111 # instrumentation
btr word ptr [r14 + rdi], 8
and rsi, 0b1111111111111 # instrumentation
cmovno rdx, qword ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
mul dword ptr [r14 + rax]
or bl, 1 # instrumentation
mov ax, 1 # instrumentation
div bl
cmovl cx, bx
add al, 36 # instrumentation
lea esi, qword ptr [rsi + rcx + 37]
and rax, 0b1111111111111 # instrumentation
cmovbe rbx, qword ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
