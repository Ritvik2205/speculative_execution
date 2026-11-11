.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
movsx ecx, di
add edx, 56
jmp .bb_0.1
.bb_0.1:
sets cl
sbb al, 61
test cl, 33
and rcx, 0b1111111111111 # instrumentation
cmovno ebx, dword ptr [r14 + rcx]
xor eax, -69
or sil, -44
jmp .bb_0.2
.bb_0.2:
test al, -82
and eax, -409673666
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
