.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add sil, 104 # instrumentation
mov esi, 22
add al, 56
and dil, -82
add cl, al
jmp .bb_0.1
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
add si, word ptr [r14 + rsi]
setb al
and rbx, 0b1111111111111 # instrumentation
or cx, word ptr [r14 + rbx]
add di, 69
xor sil, 64
and rbx, 0b1111111111111 # instrumentation
sub sil, byte ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
