.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rdx]
cmovl rax, rax
and rdx, 24
and rdx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rdx], edi
cmovnl eax, edx
and bx, 54
and al, -3 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovnl edi, dword ptr [r14 + rsi]
and dx, 60
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], 44
and rsi, 0b1111111111111 # instrumentation
and esi, 0b111 # instrumentation
bt dword ptr [r14 + rsi], esi
and dil, dl
and di, 99
and rax, 498847670
and rbx, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rbx], 50
and rsi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rsi], sil
and rax, 0b1111111111111 # instrumentation
and cl, byte ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
cmovz edx, dword ptr [r14 + rdi]
or cl, dl
and rdx, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rdx]
bts edx, 189
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
