.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], 0b1000000000000000000000000000000 # instrumentation
bsf eax, dword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rbx], 0b1000000000000000000000000000000 # instrumentation
bsr rdi, qword ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
cmovs eax, dword ptr [r14 + rdx]
cmovno di, bx
cmovnbe cx, ax
cmovnp rax, rdx
and sil, -17 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovnp cx, word ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], bl
jmp .bb_0.1
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
xor dx, word ptr [r14 + rdi]
and rdi, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rdi], 1
and rsi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rsi], 8
and cl, -101
btr rsi, 73
and rax, 0b1111111111111 # instrumentation
or rdx, qword ptr [r14 + rax]
or rbx, 0b1000000000000000000000000000000 # instrumentation
bsf rdx, rbx
or dx, si
and rcx, 0b1111111111111 # instrumentation
btr word ptr [r14 + rcx], 5
or al, -48
or bx, 0b1000000000000000 # instrumentation
bsf bx, bx
cmovnp cx, di
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
