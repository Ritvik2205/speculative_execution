.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rbx], cl
test rdi, 77
and rax, 0b1111111111111 # instrumentation
cmovnb rbx, qword ptr [r14 + rax]
btc ax, cx
xor sil, sil
btc rax, 110
and rdx, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rdx], 0
cmovs rsi, rcx
and rbx, 0b1111111111111 # instrumentation
and bl, byte ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
cmovnle esi, dword ptr [r14 + rcx]
test al, dil
jmp .bb_0.1
.bb_0.1:
cmovnb di, ax
cmovz rbx, rbx
and rcx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rcx], 6
or sil, cl
and al, 39 # instrumentation
cmovbe bx, cx
bt edx, 51
cmovns rcx, rbx
and di, ax
and bl, 16 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovp rsi, qword ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
