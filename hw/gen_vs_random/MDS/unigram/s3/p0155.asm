.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
and dword ptr [r14 + rdi], 119
and bl, -6 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovo dx, word ptr [r14 + rsi]
test dil, al
and dil, 125
cmovnp cx, bx
btr ecx, esi
cmovnl rbx, rcx
and rbx, 0b1111111111111 # instrumentation
cmovnl ebx, dword ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
cmovns rax, qword ptr [r14 + rdx]
cmovnp ax, si
or ebx, -104
and rcx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rcx], edi
cmovo edi, eax
or eax, 1725503461
and rcx, 0b1111111111111 # instrumentation
and qword ptr [r14 + rcx], rbx
and rdi, 0b1111111111111 # instrumentation
cmovs ebx, dword ptr [r14 + rdi]
and rsi, 6
and rsi, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rsi], 5
and bl, sil
and sil, sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
