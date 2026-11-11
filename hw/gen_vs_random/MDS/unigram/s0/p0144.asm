.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovs rdx, rcx
cmovnle edi, eax
and rsi, 0b1111111111111 # instrumentation
cmovnp ax, word ptr [r14 + rsi]
xor dl, -59
and rdx, 0b1111111111111 # instrumentation
and cx, word ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rsi], 117
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], sil
and rdi, 0b1111111111000 # instrumentation
and di, 0b111 # instrumentation
lock bts word ptr [r14 + rdi], di
and rdi, 0b1111111111111 # instrumentation
or edi, dword ptr [r14 + rdi]
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
and ecx, 0b111 # instrumentation
bts dword ptr [r14 + rax], ecx
or rcx, 0b1000000000000000000000000000000 # instrumentation
bsr rdx, rcx
or ebx, ebx
and rcx, 0b1111111111000 # instrumentation
and ebx, 0b111 # instrumentation
lock btc dword ptr [r14 + rcx], ebx
xor cl, 24
xor al, cl
and rcx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rcx], sil
and rcx, 0b1111111111111 # instrumentation
cmovl eax, dword ptr [r14 + rcx]
xor al, 9
or rax, 0b1000000000000000000000000000000 # instrumentation
bsf rsi, rax
and rdi, 0b1111111111111 # instrumentation
or word ptr [r14 + rdi], -74
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
