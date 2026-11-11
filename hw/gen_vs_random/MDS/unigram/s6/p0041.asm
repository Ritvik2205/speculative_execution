.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or bl, 13
and rcx, 0b1111111111111 # instrumentation
cmovnz rcx, qword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
and dword ptr [r14 + rax], -57
xor rdx, -59
and rdi, 0b1111111111111 # instrumentation
and bx, 0b111 # instrumentation
bts word ptr [r14 + rdi], bx
and bl, -5 # instrumentation
cmovnl bx, di
and rdx, 0b1111111111000 # instrumentation
and eax, 0b111 # instrumentation
lock bts dword ptr [r14 + rdx], eax
cmovnz ebx, eax
and rax, 0b1111111111000 # instrumentation
lock btc dword ptr [r14 + rax], 0
and rdi, 0b1111111111111 # instrumentation
cmovs bx, word ptr [r14 + rdi]
cmovno rcx, rdx
and rcx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rcx], 6
and rbx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rbx], 49
not esi
or dil, -76
bts edi, eax
and rdx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdx], esi
and rax, 0b1111111111111 # instrumentation
and ax, 0b111 # instrumentation
btr word ptr [r14 + rax], ax
or esi, ecx
and rdi, 0b1111111111111 # instrumentation
cmovz ecx, dword ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
