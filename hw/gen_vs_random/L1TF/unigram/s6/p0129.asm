.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea eax, qword ptr [rcx]
lea dx, qword ptr [rax]
cmovl eax, edx
and rbx, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rbx], 86
and rcx, 0b1111111111111 # instrumentation
imul ecx, dword ptr [r14 + rcx], 66
lea dx, qword ptr [rsi + rsi + 6302]
and rbx, 0b1111111111111 # instrumentation
add bl, byte ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rsi], dl
and rdi, 0b1111111111000 # instrumentation
lock adc dword ptr [r14 + rdi], 0
jmp .bb_0.1
.bb_0.1:
cmp rax, 1138518729
add bl, 10 # instrumentation
and rdx, 0b1111111111111 # instrumentation
adc word ptr [r14 + rdx], 26
sbb ax, -9869
lea rax, qword ptr [rsi]
xor dil, dl
cmovo edi, ebx
xor ecx, 49
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
