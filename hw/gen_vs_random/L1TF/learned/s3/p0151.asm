.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, -57 # instrumentation
cmovo rdx, rax
jmp .bb_0.1
.bb_0.1:
or al, bl
and dl, cl
mov dl, cl
xor sil, dl
test sil, bl
jmp .bb_0.2
.bb_0.2:
sbb al, dil
jmp .bb_0.3
.bb_0.3:
and rcx, 0b1111111111111 # instrumentation
add rdi, qword ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
