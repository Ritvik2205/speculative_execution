.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
imul bx, di, 92
and rdi, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rdi], 92
or bx, 0b1000000000000000 # instrumentation
bsf si, bx
or bl, dil
cmovnp rax, rcx
and rcx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rcx], cx
and rdi, 0b1111111111111 # instrumentation
imul cx, word ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rdx], dl
and rcx, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rcx]
jp .bb_0.1
jmp .exit_0
.bb_0.1:
and rax, 0b1111111111000 # instrumentation
lock btc dword ptr [r14 + rax], 30
cdq
and rax, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rax], ecx
and rdx, 0b1111111111111 # instrumentation
cmovno rcx, qword ptr [r14 + rdx]
cmovnb rdi, rcx
and rsi, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rsi], dl
xor al, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
