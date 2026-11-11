.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
xor eax, dword ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
and dil, byte ptr [r14 + rbx]
and bl, -14 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovs edi, dword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rax], rbx
or rdx, 0b1000000000000000000000000000000 # instrumentation
bsf rcx, rdx
cmovnp rax, rsi
and rcx, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rcx], 74
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], al
and rsi, 0b1111111111111 # instrumentation
and word ptr [r14 + rsi], cx
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rbx], 739594338
and bl, 16 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovp rax, qword ptr [r14 + rax]
bts rdi, rbx
and rsi, 0b1111111111111 # instrumentation
cmovbe ecx, dword ptr [r14 + rsi]
and rcx, -63
and rdx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rdx], dx
and rbx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rbx], si
cmovnp rax, rsi
and rcx, 0b1111111111000 # instrumentation
lock not byte ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
cmovp si, word ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
cmovle eax, dword ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
