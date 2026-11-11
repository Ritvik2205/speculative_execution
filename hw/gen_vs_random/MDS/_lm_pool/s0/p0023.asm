.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test al, -81
xor dl, bl
test dil, bl
and rdx, 0b1111111111111 # instrumentation
cmovp rax, qword ptr [r14 + rdx]
test rbx, 41
and bl, dl
xor dl, bl
and cl, al
and rax, 0b1111111111111 # instrumentation
cmovp dx, word ptr [r14 + rax]
jmp .bb_0.1
.bb_0.1:
cmovnp rcx, rdx
or rdx, -48
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
