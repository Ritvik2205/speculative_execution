.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
sub word ptr [r14 + rsi], -34
xor bl, cl
test ebx, -1465665890
js .bb_0.1
jmp .exit_0
.bb_0.1:
movzx eax, sil
and rdx, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rdx], 22
xor bl, cl
and cl, 86
lea rax, qword ptr [rbx]
add al, -13
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
