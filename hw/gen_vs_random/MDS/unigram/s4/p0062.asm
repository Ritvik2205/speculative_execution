.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
bts qword ptr [r14 + rbx], rdx
and rax, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rax], dx
and rax, 0b1111111111111 # instrumentation
cmovnz eax, dword ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
xor sil, byte ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdi], rsi
and rbx, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rbx], -15
xor sil, 94
and rdi, 0b1111111111111 # instrumentation
and bx, 0b111 # instrumentation
btr word ptr [r14 + rdi], bx
cmovns rdi, rsi
and bl, -6 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovo si, word ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
cmovnl cx, word ptr [r14 + rsi]
btc dx, si
jmp .bb_0.1
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
and qword ptr [r14 + rsi], rcx
and rcx, rcx
cmovz si, cx
and rax, 0b1111111111111 # instrumentation
test qword ptr [r14 + rax], rcx
test al, 66
and bl, 45 # instrumentation
cmovnb ax, cx
and rbx, 0b1111111111111 # instrumentation
and ax, 0b111 # instrumentation
bts word ptr [r14 + rbx], ax
and rax, 0b1111111111111 # instrumentation
and ax, 0b111 # instrumentation
btr word ptr [r14 + rax], ax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
