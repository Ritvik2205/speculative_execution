.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovl dx, bx
and rsi, 0b1111111111000 # instrumentation
and dx, 0b111 # instrumentation
lock btr word ptr [r14 + rsi], dx
and rsi, 0b1111111111111 # instrumentation
cmovnb edi, dword ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
btr word ptr [r14 + rdi], 89
and rdi, 0b1111111111111 # instrumentation
cmovl rsi, qword ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
cmovo cx, word ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
cmovle rdx, qword ptr [r14 + rax]
btr ebx, edx
and rdx, 0b1111111111111 # instrumentation
cmovz eax, dword ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
and word ptr [r14 + rdi], 39
and rcx, 0b1111111111111 # instrumentation
bt word ptr [r14 + rcx], 57
and rax, 0b1111111111111 # instrumentation
xor ebx, dword ptr [r14 + rax]
and edi, 23
or dx, 125
and rax, 0b1111111111111 # instrumentation
and ax, 0b111 # instrumentation
btr word ptr [r14 + rax], ax
and rax, 0b1111111111111 # instrumentation
cmovl rcx, qword ptr [r14 + rax]
and sil, -56
and rdi, 0b1111111111111 # instrumentation
xor rbx, qword ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rcx], dx
cmovo rax, rax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
