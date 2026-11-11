.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
inc bl
sub al, 26
add cl, -20
and rcx, 0b1111111111111 # instrumentation
or ax, word ptr [r14 + rcx]
add dil, dl
test eax, 899472326
and rax, 0b1111111111000 # instrumentation
and bx, 0b111 # instrumentation
lock btc word ptr [r14 + rax], bx
add sil, -61
jmp .bb_0.1
.bb_0.1:
cmp bl, 123
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
