.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
movsx ebx, si
inc al
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], cl
xor al, dl
and rdx, 88
neg rbx
and rdi, 0b1111111111111 # instrumentation
sub cl, byte ptr [r14 + rdi]
and cl, 40
adc dl, -12
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
