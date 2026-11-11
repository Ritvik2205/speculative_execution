.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or edx, 0b1000000000000000000000000000000 # instrumentation
bsf eax, edx
and rdx, 0b1111111111111 # instrumentation
cmovnle cx, word ptr [r14 + rdx]
or dl, dil
test eax, 758789512
and rbx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rbx], edi
and rcx, 0b1111111111111 # instrumentation
and rsi, 0b111 # instrumentation
btr qword ptr [r14 + rcx], rsi
and rcx, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rcx], dx
and rcx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rcx], 0b1000000000000000000000000000000 # instrumentation
bsr rcx, qword ptr [r14 + rcx]
cmovnbe eax, ebx
xor sil, 30
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rbx], 97
xor cl, -79
and rdi, 0b1111111111000 # instrumentation
lock not byte ptr [r14 + rdi]
and dil, -3 # instrumentation
cmovnb di, bx
test rax, 1732677821
and rbx, 0b1111111111111 # instrumentation
cmovle ecx, dword ptr [r14 + rbx]
and bl, -13 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovnp eax, dword ptr [r14 + rax]
and cl, -109 # instrumentation
not rcx
test bl, 106
and rdi, 0b1111111111000 # instrumentation
and esi, 0b111 # instrumentation
lock bts dword ptr [r14 + rdi], esi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
