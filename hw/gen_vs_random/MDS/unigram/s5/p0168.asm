.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
xor dl, byte ptr [r14 + rdx]
or edx, 0b1000000000000000000000000000000 # instrumentation
bsr eax, edx
and rax, 0b1111111111111 # instrumentation
or esi, dword ptr [r14 + rax]
bt edx, 30
test al, cl
and rbx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rbx], rsi
btc bx, 58
not dil
or sil, -49
or bx, 0b1000000000000000 # instrumentation
bsf bx, bx
and rdx, 0b1111111111111 # instrumentation
xor edx, dword ptr [r14 + rdx]
and bl, -99 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovnl eax, dword ptr [r14 + rax]
bts rdx, rcx
btc eax, 40
cmovnp rax, rdi
and rsi, 0b1111111111111 # instrumentation
cmovle cx, word ptr [r14 + rsi]
btr dx, bx
bt dx, 228
bt edi, eax
and rdx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdx], cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
