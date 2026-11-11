.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and si, 30
bts rax, 117
and rdx, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rdx], rcx
cmovo dx, si
and cl, -81 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovns ax, word ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
cmovnbe rcx, qword ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
cmovz esi, dword ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdi], 13
bt edi, 254
jmp .bb_0.1
.bb_0.1:
or eax, 0b1000000000000000000000000000000 # instrumentation
bsf eax, eax
btc di, 91
or eax, 0b1000000000000000000000000000000 # instrumentation
bsr edx, eax
and dl, -26 # instrumentation
cmovnp rax, rdx
or esi, 0b1000000000000000000000000000000 # instrumentation
bsf esi, esi
btc rcx, 69
and rdx, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rdx], 56
not eax
and sil, sil
and rax, 0b1111111111111 # instrumentation
xor word ptr [r14 + rax], ax
test bl, dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
