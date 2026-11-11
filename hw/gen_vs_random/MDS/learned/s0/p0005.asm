.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or dl, -21
and rax, 0b1111111111111 # instrumentation
cmovbe bx, word ptr [r14 + rax]
test al, 22
jmp .bb_0.1
.bb_0.1:
or al, 37
and bx, 81
jmp .bb_0.2
.bb_0.2:
jmp .bb_0.3
.bb_0.3:
xor cl, al
and rdi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdi], sil
and dl, -73
and rdx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdx], -2966447
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
