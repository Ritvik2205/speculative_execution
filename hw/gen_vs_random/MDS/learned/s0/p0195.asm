.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or al, 37
and rdi, 0b1111111111111 # instrumentation
cmovp bx, word ptr [r14 + rdi]
and rbx, 65
and rcx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rcx], dil
or bl, dil
or al, dl
and rax, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rax], 1
and al, -8
and rsi, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rsi]
btc di, 164
and esi, 1
or dl, -97
and cl, sil
or dl, -31
and rdx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rdx], 7
test dl, sil
test rax, -2052112368
xor al, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
