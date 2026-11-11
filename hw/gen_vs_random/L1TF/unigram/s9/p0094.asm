.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or rax, -82
and rbx, 0b1111111111111 # instrumentation
bts word ptr [r14 + rbx], 76
add dx, 99
and rcx, 0b1111111111111 # instrumentation
cmovnbe rdi, qword ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
setnle byte ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
xor word ptr [r14 + rdi], cx
cmovbe edi, edx
add edi, 71
lea edx, qword ptr [rdi + rdi]
and rax, 0b1111111111111 # instrumentation
cmp di, word ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
and bx, 0b111 # instrumentation
btr word ptr [r14 + rsi], bx
jmp .bb_0.1
.bb_0.1:
cmovz ebx, edi
bt rdx, rax
and rdi, 0b1111111111111 # instrumentation
bts word ptr [r14 + rdi], 94
and rsi, 0b1111111111111 # instrumentation
imul eax, dword ptr [r14 + rsi], 26
bswap rbx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
