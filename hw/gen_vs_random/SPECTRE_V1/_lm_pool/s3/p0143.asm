.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
inc rbx
and rdi, 0b1111111111111 # instrumentation
sbb eax, dword ptr [r14 + rdi]
and al, dl
sub al, 63
and rcx, 0b1111111111111 # instrumentation
sbb eax, dword ptr [r14 + rcx]
and dil, -114
xchg cl, cl
and rcx, 0b1111111111111 # instrumentation
adc dl, byte ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
sub dl, byte ptr [r14 + rax]
sub bl, -19
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
