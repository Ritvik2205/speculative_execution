.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
bts ebx, 18
and rcx, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
btr qword ptr [r14 + rcx], rdx
bt edx, 254
cmovz rcx, rdi
and bl, -104 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovs eax, dword ptr [r14 + rdi]
and cl, 89 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovbe rsi, qword ptr [r14 + rdi]
test bl, 106
or dil, dil
bt eax, edi
xor dl, dl
and rax, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rax], 66
or rax, -285849275
and rdx, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdx], 100
and dl, 124 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovnbe eax, dword ptr [r14 + rdi]
and rdi, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rdi], 2
cmovns di, si
cmovnl esi, ecx
or rax, 0b1000000000000000000000000000000 # instrumentation
bsr rcx, rax
and eax, -872608366
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
