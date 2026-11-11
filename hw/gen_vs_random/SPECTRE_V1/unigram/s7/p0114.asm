.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovb ecx, eax
inc ebx
imul rdx, rax, 18
lea bx, qword ptr [rbx + rax]
add dl, -77 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovz di, word ptr [r14 + rdi]
jnl .bb_0.1
jmp .exit_0
.bb_0.1:
xor sil, -33
and rax, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rax], -125
and rax, 0b1111111111111 # instrumentation
and byte ptr [r14 + rax], cl
and rcx, 0b1111111111111 # instrumentation
mul word ptr [r14 + rcx]
and di, si
and rcx, 0b1111111111111 # instrumentation
cmovnp cx, word ptr [r14 + rcx]
and rcx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rcx], cl
or rdi, 0b1000000000000000000000000000000 # instrumentation
bsr rax, rdi
and rbx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rbx], 103
mul cx
add al, -50 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovs cx, word ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
