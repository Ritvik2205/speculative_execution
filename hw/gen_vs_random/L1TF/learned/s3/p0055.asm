.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -64 # instrumentation
cmovnle edx, ecx
lea bx, qword ptr [rdx]
jmp .bb_0.1
.bb_0.1:
and rdi, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rdi], 47
or dl, -92
or bl, cl
sbb al, -23
test dil, -126
and al, -68
jmp .bb_0.2
.bb_0.2:
and rdi, 0b1111111111111 # instrumentation
add rbx, qword ptr [r14 + rdi]
add al, -46
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
