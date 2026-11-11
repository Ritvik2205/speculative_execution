.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or dl, 51
xor al, -89
and bl, 68
or bl, sil
test sil, al
jmp .bb_0.1
.bb_0.1:
and cl, cl
jmp .bb_0.2
.bb_0.2:
and rax, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rax], 71
xor rsi, -117
and cl, -71
and rcx, 0b1111111111111 # instrumentation
and bx, word ptr [r14 + rcx]
and sil, 74
xor dil, -70
and rcx, 0b1111111111111 # instrumentation
xor rax, qword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
test word ptr [r14 + rax], -14842
or al, 37
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
