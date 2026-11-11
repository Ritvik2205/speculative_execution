.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
or edx, dword ptr [r14 + rbx]
sub di, 85
and rdi, 0b1111111111111 # instrumentation
inc byte ptr [r14 + rdi]
jmp .bb_0.1
.bb_0.1:
or dl, cl
cwde
jmp .bb_0.2
.bb_0.2:
and rsi, 0b1111111111111 # instrumentation
test word ptr [r14 + rsi], -12952
neg rdi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
