.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111000 # instrumentation
and esi, 0b111 # instrumentation
lock btr dword ptr [r14 + rcx], esi
and rsi, 0b1111111111111 # instrumentation
xor esi, dword ptr [r14 + rsi]
or sil, sil
and cl, 38 # instrumentation
cmovbe eax, ecx
and rbx, 0b1111111111111 # instrumentation
cmovnl ax, word ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rdx], -113
test sil, sil
cmovl rax, rdx
bts rdx, 200
and rcx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rcx], cl
and rdx, 0b1111111111111 # instrumentation
test word ptr [r14 + rdx], si
cmovnbe ecx, edi
not al
and rax, 0b1111111111111 # instrumentation
cmovnbe rbx, qword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
cmovnb rbx, qword ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
or rsi, qword ptr [r14 + rdi]
and rsi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rsi], 20
and rsi, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rsi], 5
test edi, -1252846009
btc rcx, 26
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
