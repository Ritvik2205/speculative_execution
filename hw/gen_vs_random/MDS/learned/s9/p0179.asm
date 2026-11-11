.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
xor rdi, qword ptr [r14 + rsi]
test al, 66
and sil, -9
and al, 106
jmp .bb_0.1
.bb_0.1:
or bl, cl
or cl, 6
test sil, 41
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], sil
jmp .bb_0.2
.bb_0.2:
or cl, 39
not al
or al, dil
xor cl, bl
and ax, -16061
and ax, -12519
jmp .bb_0.3
.bb_0.3:
and rax, 0b1111111111111 # instrumentation
xor cl, byte ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
