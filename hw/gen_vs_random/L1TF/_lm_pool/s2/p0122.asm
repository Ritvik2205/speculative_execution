.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, 21 # instrumentation
adc bx, 11
add al, 74
and rdi, 0b1111111111111 # instrumentation
add rcx, qword ptr [r14 + rdi]
cmovb bx, cx
and rbx, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rbx]
cmovle rbx, rcx
jmp .bb_0.1
.bb_0.1:
and bl, -56 # instrumentation
cmovnle eax, edx
and rax, 0b1111111111111 # instrumentation
and bx, 0b111 # instrumentation
bt word ptr [r14 + rax], bx
and al, -68
sub dl, 41
or al, -57
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
