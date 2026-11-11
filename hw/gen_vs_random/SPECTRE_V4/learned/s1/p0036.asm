.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, -32 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovno edx, dword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
mov word ptr [r14 + rax], bx
and rcx, 0b1111111111111 # instrumentation
xor ebx, dword ptr [r14 + rcx]
xor cl, cl
and rdi, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rdi], 60
and rdx, 0b1111111111111 # instrumentation
cmovns di, word ptr [r14 + rdx]
neg bl
and rax, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rax], 5
movzx di, bl
btc bx, ax
and rax, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rax], ecx
cmp rax, -120490246
and rsi, 0b1111111111000 # instrumentation
lock inc qword ptr [r14 + rsi]
and eax, -24
imul al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
