.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
btc rdx, 96
and rsi, 0b1111111111111 # instrumentation
cmovnz ebx, dword ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
and edi, 0b111 # instrumentation
bts dword ptr [r14 + rdx], edi
and rcx, 0b1111111111111 # instrumentation
cmovp rdx, qword ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
cmovz edx, dword ptr [r14 + rcx]
or sil, -78
and rcx, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rcx], 7
or rax, 0b1000000000000000000000000000000 # instrumentation
bsr rbx, rax
cmovnp ax, bx
bts ebx, 205
xor bl, -27
and rdi, 0b1111111111111 # instrumentation
and edx, 0b111 # instrumentation
bts dword ptr [r14 + rdi], edx
test bl, -14
and rdx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rsi], ecx
cmovnz edi, ebx
cmovno rax, rdi
and rsi, 0b1111111111000 # instrumentation
lock btr word ptr [r14 + rsi], 0
xor cl, 55
bts eax, 222
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
