.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rbx], edx
mul rdx
mul rcx
and rcx, 0b1111111111111 # instrumentation
neg qword ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
adc word ptr [r14 + rcx], cx
and rdx, 0b1111111111111 # instrumentation
add dword ptr [r14 + rdx], 118
inc dl
and rdi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdi], sil
and rbx, 0b1111111111111 # instrumentation
cmovnz bx, word ptr [r14 + rbx]
jmp .bb_0.1
.bb_0.1:
add bl, 62 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovle cx, word ptr [r14 + rdx]
or rsi, 50
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], 22
and rdx, 0b1111111111000 # instrumentation
lock sub dword ptr [r14 + rdx], 47
cmovnbe edx, ebx
xor ax, 22976
and rbx, 0b1111111111111 # instrumentation
dec word ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
