.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovns cx, bx
and rsi, 0b1111111111111 # instrumentation
and word ptr [r14 + rsi], -33
and rbx, 0b1111111111111 # instrumentation
xor bl, byte ptr [r14 + rbx]
cmovnbe ebx, esi
cmovnb cx, bx
cmovno rsi, rsi
and rsi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rsi], -120554987
or dx, 125
and rdx, 0b1111111111111 # instrumentation
cmovnb rsi, qword ptr [r14 + rdx]
jmp .bb_0.1
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
xor word ptr [r14 + rsi], 57
and rax, 0b1111111111111 # instrumentation
xor sil, byte ptr [r14 + rax]
and rcx, 0b1111111111000 # instrumentation
and ax, 0b111 # instrumentation
lock bts word ptr [r14 + rcx], ax
bt rsi, rsi
and rdi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdi], -113
and rdx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdx], -46
and rsi, 0b1111111111111 # instrumentation
cmovz si, word ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
and di, 0b111 # instrumentation
bts word ptr [r14 + rcx], di
and rax, 0b1111111111111 # instrumentation
not dword ptr [r14 + rax]
xor cl, sil
btr rax, 56
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
