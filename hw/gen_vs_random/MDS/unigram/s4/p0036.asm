.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
btc rdx, 59
test si, dx
btr eax, eax
test cx, si
and rdi, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rdi], -41
xor bl, al
and rbx, 0b1111111111111 # instrumentation
cmovns eax, dword ptr [r14 + rbx]
btr bx, 74
and rbx, 0b1111111111111 # instrumentation
cmovnl ax, word ptr [r14 + rbx]
xor rax, -1657511731
and rbx, 0b1111111111111 # instrumentation
cmovb rbx, qword ptr [r14 + rbx]
and rsi, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rsi], 59
cmovno cx, bx
and dil, -103 # instrumentation
cmovns edi, edi
and rcx, 0b1111111111111 # instrumentation
cmovns rbx, qword ptr [r14 + rcx]
and rdx, 0b1111111111000 # instrumentation
and edx, 0b111 # instrumentation
lock btc dword ptr [r14 + rdx], edx
test rdx, 97
cmovnbe ecx, esi
btr rdi, 129
and rbx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rbx], cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
