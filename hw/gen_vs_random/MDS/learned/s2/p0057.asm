.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111000 # instrumentation
and di, 0b111 # instrumentation
lock btc word ptr [r14 + rdx], di
bts rcx, rdx
jmp .bb_0.1
.bb_0.1:
or al, sil
test dil, sil
jmp .bb_0.2
.bb_0.2:
test ax, cx
and rcx, 0b1111111111111 # instrumentation
or bx, word ptr [r14 + rcx]
jmp .bb_0.3
.bb_0.3:
or sil, dil
or dl, al
and rsi, 0b1111111111111 # instrumentation
or bx, word ptr [r14 + rsi]
test esi, 1857129931
or dil, -78
xor sil, dil
or al, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
