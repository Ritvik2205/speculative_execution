.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
mov bl, byte ptr [r14 + rcx]
jl .bb_0.1
jmp .exit_0
.bb_0.1:
cmovno bx, si
and rbx, 0b1111111111111 # instrumentation
mov edx, dword ptr [r14 + rbx]
sub dl, cl
test sil, -31
inc dil
xchg al, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
