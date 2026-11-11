.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test al, 127
test edx, -1561252782
or sil, cl
or bl, 43
or dil, -71
and dl, dl
test edx, -372470678
jmp .bb_0.1
.bb_0.1:
or al, 37
and cl, -6
and rax, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rax], sil
and rcx, 0b1111111111111 # instrumentation
or rsi, qword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
xor dil, byte ptr [r14 + rax]
xor dl, -59
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
