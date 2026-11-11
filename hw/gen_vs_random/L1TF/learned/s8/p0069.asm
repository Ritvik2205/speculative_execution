.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test al, sil
and rcx, 0b1111111111111 # instrumentation
cmovnp rdx, qword ptr [r14 + rcx]
xor sil, 64
jmp .bb_0.1
.bb_0.1:
add dl, 20 # instrumentation
and rdi, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rdi], 37
sbb rcx, 62
or rax, 0b1000000000000000000000000000000 # instrumentation
bsf rbx, rax
jmp .bb_0.2
.bb_0.2:
test al, dl
sbb cl, cl
and bx, 47
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
