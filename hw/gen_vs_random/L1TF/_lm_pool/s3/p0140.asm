.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
inc rbx
and rcx, 0b1111111111111 # instrumentation
sbb eax, dword ptr [r14 + rcx]
and al, dl
jmp .bb_0.1
.bb_0.1:
add al, 104 # instrumentation
sbb rax, 1890168613
sub al, 26
and rdi, 0b1111111111111 # instrumentation
cmp cl, byte ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rdx], 7
xchg cl, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
