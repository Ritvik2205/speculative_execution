.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or bl, al
and sil, 89
xor rax, -345061362
test eax, 1838539683
or bl, -54
and cl, -71
or cx, -42
and rsi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rsi], bl
jmp .bb_0.1
.bb_0.1:
test al, 127
test al, dil
xor bl, al
or dl, cl
and rdx, 0b1111111111111 # instrumentation
and sil, byte ptr [r14 + rdx]
and rdx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rdx], si
test cl, 91
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
