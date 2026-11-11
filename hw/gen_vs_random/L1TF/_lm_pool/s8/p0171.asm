.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test bl, cl
test sil, 29
sbb dil, 27
or sil, -44
jmp .bb_0.1
.bb_0.1:
jmp .bb_0.2
.bb_0.2:
add bl, -113 # instrumentation
and rbx, 0b1111111111111 # instrumentation
movzx ebx, word ptr [r14 + rbx]
inc al
and al, -68
jmp .bb_0.3
.bb_0.3:
or al, bl
jmp .bb_0.4
.bb_0.4:
and rdx, 0b1111111111111 # instrumentation
cmovle rcx, qword ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
