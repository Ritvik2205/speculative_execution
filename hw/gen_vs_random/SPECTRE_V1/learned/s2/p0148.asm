.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xchg ebx, eax
and rcx, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rcx], 32
and eax, 933895314
test al, dil
jl .bb_0.1
jmp .exit_0
.bb_0.1:
cmovno cx, bx
sub dl, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
