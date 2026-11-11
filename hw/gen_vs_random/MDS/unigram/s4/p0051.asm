.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
cmovnl edx, dword ptr [r14 + rdx]
or ax, -6817
and rsi, 0b1111111111111 # instrumentation
and rcx, 0b111 # instrumentation
bt qword ptr [r14 + rsi], rcx
or ebx, -104
or dx, 0b1000000000000000 # instrumentation
bsr dx, dx
and rcx, 0b1111111111000 # instrumentation
and eax, 0b111 # instrumentation
lock btr dword ptr [r14 + rcx], eax
and bl, 3 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovp esi, dword ptr [r14 + rdx]
or rdi, 0b1000000000000000000000000000000 # instrumentation
bsr rcx, rdi
and dl, 37 # instrumentation
cmovnbe ax, di
test ax, 4430
and ecx, -104
xor dil, al
and bl, -120 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovnbe dx, word ptr [r14 + rdx]
jmp .bb_0.1
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
and bx, 0b111 # instrumentation
btr word ptr [r14 + rdi], bx
btr si, cx
and rdx, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rdx], -22
btr ax, ax
and rdx, 0b1111111111111 # instrumentation
cmovnl si, word ptr [r14 + rdx]
and rdx, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rdx], 50
test dl, dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
