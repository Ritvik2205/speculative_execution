.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
or dl, byte ptr [r14 + rbx]
xor sil, al
and dl, 97 # instrumentation
cmovnp cx, bx
and rsi, 0b1111111111111 # instrumentation
and rbx, 0b111 # instrumentation
btc qword ptr [r14 + rsi], rbx
and rdx, 0b1111111111111 # instrumentation
cmovbe esi, dword ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
not qword ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
cmovnz rsi, qword ptr [r14 + rsi]
and rsi, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rsi], eax
test sil, sil
and rax, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rax], 7
bt ebx, 54
and rcx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rcx], edx
and rcx, 0b1111111111111 # instrumentation
cmovnbe dx, word ptr [r14 + rcx]
xor ax, -16696
and rdx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdx], eax
or ebx, 0b1000000000000000000000000000000 # instrumentation
bsr ebx, ebx
test cl, 54
xor rsi, rdi
and sil, -13 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovno esi, dword ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rcx], cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
