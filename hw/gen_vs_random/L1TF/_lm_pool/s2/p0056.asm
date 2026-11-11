.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test bl, 12
sbb al, 92
test al, -70
jl .bb_0.1
jmp .bb_0.2
.bb_0.1:
setnz bl
xchg bl, dl
and rax, 0b1111111111111 # instrumentation
or sil, byte ptr [r14 + rax]
jmp .bb_0.2
.bb_0.2:
and edx, 3
and rax, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rax]
or al, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
