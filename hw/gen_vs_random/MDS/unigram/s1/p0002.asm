.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
cmovnl ax, word ptr [r14 + rax]
bt esi, edi
cmovo edi, edx
and rax, 0b1111111111111 # instrumentation
btr word ptr [r14 + rax], 32
and rdx, 0b1111111111111 # instrumentation
cmovns rcx, qword ptr [r14 + rdx]
and rsi, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rsi], 6
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], -13
bts eax, edi
and rcx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rcx], -20
cmovnbe ax, cx
bt rax, rcx
and si, 56
bts rax, rax
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], ax
test al, 74
or dl, -115
xor dx, cx
xor sil, 17
xor ebx, ebx
and bx, cx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
