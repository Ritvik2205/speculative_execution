.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovnb edi, ecx
and rbx, 0b1111111111111 # instrumentation
xor sil, byte ptr [r14 + rbx]
cmovnb rcx, rcx
and bl, al
xor sil, -14
and dl, 113 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovnl ecx, dword ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdx], 0b1000000000000000000000000000000 # instrumentation
bsr edx, dword ptr [r14 + rdx]
xor sil, -14
and rsi, 0b1111111111111 # instrumentation
cmovnbe si, word ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
cmovnp bx, word ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
and sil, byte ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rbx], 3
and rdx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
test word ptr [r14 + rcx], 2908
xor si, ax
and bl, 116 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovnl esi, dword ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
and rax, 0b111 # instrumentation
bt qword ptr [r14 + rbx], rax
test sil, -55
and rdx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdx], 43
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
