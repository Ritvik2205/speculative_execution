.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, 18
test al, -71
jp .bb_0.1
jmp .bb_0.2
.bb_0.1:
and bl, dil
xor cl, bl
sub dl, -48
jmp .bb_0.2
.bb_0.2:
lea ax, qword ptr [rcx]
and rbx, 0b1111111111111 # instrumentation
cmovz rdx, qword ptr [r14 + rbx]
lea edi, qword ptr [rcx]
jl .bb_0.3
jmp .exit_0
.bb_0.3:
or eax, -126
add al, 10
or al, 19
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
