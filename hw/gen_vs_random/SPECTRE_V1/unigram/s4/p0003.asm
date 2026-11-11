.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
xor ax, word ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
cmovnb rax, qword ptr [r14 + rbx]
lea di, qword ptr [rbx + rsi]
and rbx, 0b1111111111111 # instrumentation
and rbx, 0b111 # instrumentation
bts qword ptr [r14 + rbx], rbx
and rdx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rdx], bl
and rdx, 0b1111111111111 # instrumentation
sbb esi, dword ptr [r14 + rdx]
jnp .bb_0.1
jmp .exit_0
.bb_0.1:
sub cl, sil
and rdx, 0b1111111111111 # instrumentation
cmovnz rsi, qword ptr [r14 + rdx]
cmovz si, si
and rdx, 0b1111111111111 # instrumentation
or word ptr [r14 + rdx], 0b1000000000000000 # instrumentation
bsf ax, word ptr [r14 + rdx]
or cx, 0b1000000000000000 # instrumentation
bsf dx, cx
and rdi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdi], 98
and rcx, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rbx], 0b1000000000000000000000000000000 # instrumentation
bsf edi, dword ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
cmovo eax, dword ptr [r14 + rcx]
add dil, 40 # instrumentation
btc rdi, rdi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
