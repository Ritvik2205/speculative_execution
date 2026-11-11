.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or dil, -52
and rbx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rbx], sil
xor cx, di
and rdi, 0b1111111111111 # instrumentation
cmovnl di, word ptr [r14 + rdi]
test rcx, 24
or rax, 0b1000000000000000000000000000000 # instrumentation
bsr rbx, rax
and rsi, 0b1111111111111 # instrumentation
cmovnl si, word ptr [r14 + rsi]
bt esi, 80
and bl, -17 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovnp si, word ptr [r14 + rbx]
test edi, 10
and rsi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rsi], edi
cmovbe ax, dx
cmovns cx, di
and rdx, 0b1111111111000 # instrumentation
and eax, 0b111 # instrumentation
lock btr dword ptr [r14 + rdx], eax
xor sil, 77
and rdi, 0b1111111111111 # instrumentation
cmovno rbx, qword ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
and eax, 0b111 # instrumentation
bt dword ptr [r14 + rcx], eax
cmovnb esi, esi
test rdx, -1624442902
and rsi, 0b1111111111000 # instrumentation
and eax, 0b111 # instrumentation
lock btr dword ptr [r14 + rsi], eax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
