.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmp sil, al
and rcx, 0b1111111111111 # instrumentation
sbb word ptr [r14 + rcx], 82
add dl, 89 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovz eax, dword ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
cmovnp cx, word ptr [r14 + rdx]
lea ecx, qword ptr [rdx + rcx]
and rbx, 0b1111111111111 # instrumentation
and qword ptr [r14 + rbx], 34
btc rax, 63
and rdi, 0b1111111111111 # instrumentation
or word ptr [r14 + rdi], 0b1000000000000000 # instrumentation
bsf di, word ptr [r14 + rdi]
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], al
cmovz ecx, eax
lea rsi, qword ptr [rbx]
and rbx, 0b1111111111111 # instrumentation
mul word ptr [r14 + rbx]
lea rcx, qword ptr [rdx + rsi]
and rbx, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rbx], -28
and rdx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdx], dl
setnbe al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
