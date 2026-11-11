.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
bts rdx, rdi
btr ebx, ebx
and rdx, 0b1111111111111 # instrumentation
or word ptr [r14 + rdx], 0b1000000000000000 # instrumentation
bsf di, word ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
and rbx, qword ptr [r14 + rcx]
test cl, dl
test rax, -648054011
cmovnp eax, edx
test ax, dx
and rdi, 0b1111111111111 # instrumentation
cmovz ebx, dword ptr [r14 + rdi]
jmp .bb_0.1
.bb_0.1:
or dl, sil
cmovs ax, si
and rsi, 0b1111111111111 # instrumentation
cmovno rsi, qword ptr [r14 + rsi]
and rdx, rdx
and rsi, 0b1111111111111 # instrumentation
cmovs rsi, qword ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
cmovs esi, dword ptr [r14 + rcx]
or sil, -49
and rbx, 0b1111111111111 # instrumentation
cmovnb rbx, qword ptr [r14 + rbx]
and sil, 8 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovns si, word ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
cmovnbe eax, dword ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
