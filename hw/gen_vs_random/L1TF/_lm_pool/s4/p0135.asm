.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
movsx esi, cx
lea eax, qword ptr [rdx + rdx + 92]
test bl, -92
test al, cl
or rax, 1362710293
and al, -68
jmp .bb_0.1
.bb_0.1:
test cl, 95
and rbx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rbx], sil
and rdx, 0b1111111111111 # instrumentation
add rcx, qword ptr [r14 + rdx]
and al, -68
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
