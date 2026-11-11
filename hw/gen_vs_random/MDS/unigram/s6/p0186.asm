.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovnl esi, edx
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], bl
and rsi, 0b1111111111111 # instrumentation
test word ptr [r14 + rsi], 3898
and rcx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rcx], dil
cmovns rax, rdx
or sil, dl
and rax, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rax], 7
test eax, 343548072
jmp .bb_0.1
.bb_0.1:
test dl, 9
and rdx, 0b1111111111111 # instrumentation
or dx, word ptr [r14 + rdx]
and bl, 68
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], 194454182
bt ebx, eax
btc esi, ecx
cmovnb di, bx
and rax, 0b1111111111000 # instrumentation
and eax, 0b111 # instrumentation
lock bts dword ptr [r14 + rax], eax
and rsi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rsi], 25
and bl, 121 # instrumentation
bt rdi, 138
and rdi, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rdi], 64
and rsi, 0b1111111111111 # instrumentation
cmovs dx, word ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
