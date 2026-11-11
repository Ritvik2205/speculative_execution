.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111000 # instrumentation
and rax, 0b111 # instrumentation
lock btr qword ptr [r14 + rdi], rax
and sil, -26 # instrumentation
cmovnp rcx, rsi
cmovnbe ax, bx
cmovs eax, esi
and rdx, 0b1111111111000 # instrumentation
and ebx, 0b111 # instrumentation
lock btc dword ptr [r14 + rdx], ebx
test dil, -67
and rsi, 0b1111111111111 # instrumentation
cmovnbe ecx, dword ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
cmovnle rax, qword ptr [r14 + rdi]
xor bl, cl
xor al, -15
and rdx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rdx], sil
xor al, 78
and rdx, 0b1111111111000 # instrumentation
and ebx, 0b111 # instrumentation
lock bts dword ptr [r14 + rdx], ebx
xor rdi, rcx
xor dil, dil
and rbx, 0b1111111111000 # instrumentation
and ebx, 0b111 # instrumentation
lock btc dword ptr [r14 + rbx], ebx
cmovb rcx, rbx
and rdi, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rdi], -47
and rax, 0b1111111111111 # instrumentation
cmovno di, word ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
xor si, word ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
