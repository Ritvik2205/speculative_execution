.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test al, -84
and rdx, 88
sbb al, cl
and dx, 63
setp dil
and rcx, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rcx], -24
jmp .bb_0.1
.bb_0.1:
and esi, 49
sbb bl, dl
lea eax, qword ptr [rcx]
and rbx, rax
xor cx, 113
or dx, 0b1000000000000000 # instrumentation
bsf bx, dx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
