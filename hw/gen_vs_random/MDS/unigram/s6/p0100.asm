.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test dil, dl
btc rdx, rdi
and rdi, 0b1111111111111 # instrumentation
or dil, byte ptr [r14 + rdi]
and cl, -8 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovno di, word ptr [r14 + rdx]
and dl, dl
xor al, 122
and rcx, 0b1111111111111 # instrumentation
and ebx, dword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
cmovnl rdx, qword ptr [r14 + rax]
xor dil, 8
and sil, 89
jmp .bb_0.1
.bb_0.1:
xor dl, 8
and dl, dl
test edx, ecx
and rdx, 0b1111111111111 # instrumentation
cmovns rsi, qword ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
and eax, 0b111 # instrumentation
bts dword ptr [r14 + rdi], eax
or rbx, -77
bt ax, si
btr esi, 43
bt rdi, rbx
and rax, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rax], 51
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
