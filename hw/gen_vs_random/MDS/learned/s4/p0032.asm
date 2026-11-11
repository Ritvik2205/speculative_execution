.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and bl, 122 # instrumentation
cmovnbe ebx, ecx
and rax, 0b1111111111111 # instrumentation
cmovnbe rax, qword ptr [r14 + rax]
or rsi, 0b1000000000000000000000000000000 # instrumentation
bsr rdx, rsi
or sil, -8
xor si, 78
cmovnb bx, bx
and rsi, 0b1111111111111 # instrumentation
cmovnbe rcx, qword ptr [r14 + rsi]
or dl, 22
and rdx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdx], esi
jmp .bb_0.1
.bb_0.1:
xor cl, 122
cmovnl rdx, rdx
or al, -48
and rdx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdx], -69
xor bx, di
and al, -56
xor dl, cl
bt rcx, rdi
or dl, dl
and bl, 44 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovle ax, word ptr [r14 + rdx]
cmovnl si, cx
and rdx, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rdx], 103
and rcx, 0b1111111111111 # instrumentation
and rsi, qword ptr [r14 + rcx]
or rax, 1749358813
test dl, 25
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
