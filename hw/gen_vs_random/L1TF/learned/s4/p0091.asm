.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test bl, -92
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
add eax, dword ptr [r14 + rcx]
and cx, 127
sbb al, bl
test esi, 94
jmp .bb_0.2
.bb_0.2:
jmp .bb_0.3
.bb_0.3:
or al, dil
jmp .bb_0.4
.bb_0.4:
and rbx, 0b1111111111111 # instrumentation
add dil, byte ptr [r14 + rbx]
jmp .bb_0.5
.bb_0.5:
lea cx, qword ptr [rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
