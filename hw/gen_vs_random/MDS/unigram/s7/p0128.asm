.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rsi], rdx
cmovb ax, dx
and rcx, 0b1111111111111 # instrumentation
and ax, 0b111 # instrumentation
btr word ptr [r14 + rcx], ax
and bl, 27 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovnz rdx, qword ptr [r14 + rdx]
btc rdi, rsi
xor dl, bl
and rcx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rcx], sil
or si, -12
and dx, 60
and rsi, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rsi], 19
bt esi, 3
xor dil, sil
and rsi, 0b1111111111111 # instrumentation
btr word ptr [r14 + rsi], 5
and al, -27 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovnbe rax, qword ptr [r14 + rcx]
xor cx, -18
and dil, 50 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovp bx, word ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
and bl, byte ptr [r14 + rbx]
or eax, 0b1000000000000000000000000000000 # instrumentation
bsr edx, eax
btc cx, si
and rcx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rcx], 66
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
