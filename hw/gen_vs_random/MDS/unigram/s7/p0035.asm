.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovnz di, ax
and rdx, 0b1111111111000 # instrumentation
and ecx, 0b111 # instrumentation
lock bts dword ptr [r14 + rdx], ecx
cmovnp cx, bx
cmovz eax, eax
and rdi, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rdi], -27
or edx, ecx
and rax, 0b1111111111111 # instrumentation
or ecx, dword ptr [r14 + rax]
or dil, dil
and rcx, 0b1111111111111 # instrumentation
and di, 0b111 # instrumentation
bts word ptr [r14 + rcx], di
bts rsi, 221
test bx, 4954
jmp .bb_0.1
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdi], al
and al, -83 # instrumentation
cmovnp rdx, rdi
and rdi, 0b1111111111111 # instrumentation
and rsi, 0b111 # instrumentation
bt qword ptr [r14 + rdi], rsi
and rbx, 0b1111111111000 # instrumentation
lock not word ptr [r14 + rbx]
cmovnz si, ax
and rsi, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rsi], 5
xor ecx, 8
test dil, sil
and rdx, 0b1111111111000 # instrumentation
lock not word ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
