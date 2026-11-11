.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or bl, al
and ax, -10351
xor bl, -102
xor dl, al
or al, sil
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], bl
test edx, -372470678
and bl, cl
xor cl, 15
and rdx, 22
and cx, -8
jmp .bb_0.1
.bb_0.1:
or ax, -6817
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
