.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
and dil, byte ptr [r14 + rsi]
or rdx, 1 # instrumentation
add al, 122 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovo bx, word ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
imul rax, qword ptr [r14 + rsi]
xor cl, 114
and rax, 0b1111111111111 # instrumentation
add byte ptr [r14 + rax], dil
and rcx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rcx], eax
lea edi, qword ptr [rsi]
add sil, 36
and rdi, 0b1111111111111 # instrumentation
add word ptr [r14 + rdi], bx
btr edx, ebx
and rcx, 0b1111111111111 # instrumentation
or ax, word ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
cmovle bx, word ptr [r14 + rax]
cmp rdi, rsi
bt dx, 21
and bl, -115 # instrumentation
cmovl ax, bx
and sil, 78
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
