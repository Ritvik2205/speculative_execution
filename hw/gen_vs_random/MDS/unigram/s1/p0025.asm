.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and si, -121
test al, al
and al, 54 # instrumentation
cmovnp bx, bx
or al, -78
and rdx, 0b1111111111111 # instrumentation
and eax, 0b111 # instrumentation
bts dword ptr [r14 + rdx], eax
xor al, 99
test dl, sil
and rbx, 0b1111111111111 # instrumentation
and rbx, qword ptr [r14 + rbx]
or rbx, -77
and rcx, 0b1111111111111 # instrumentation
cmovle ax, word ptr [r14 + rcx]
cmovo rdx, rcx
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdx], al
and rcx, 0b1111111111111 # instrumentation
or bl, byte ptr [r14 + rcx]
and di, si
or edi, 0b1000000000000000000000000000000 # instrumentation
bsf edx, edi
and rdx, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rdx], 0
and rdx, 0b1111111111000 # instrumentation
and esi, 0b111 # instrumentation
lock btc dword ptr [r14 + rdx], esi
and rsi, 0b1111111111111 # instrumentation
cmovnp rbx, qword ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
bt word ptr [r14 + rcx], 17
and rcx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rcx], dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
