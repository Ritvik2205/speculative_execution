.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111000 # instrumentation
lock bts qword ptr [r14 + rbx], 93
and al, dil
add bl, dl
jmp .bb_0.1
.bb_0.1:
inc rax
dec dl
jmp .bb_0.2
.bb_0.2:
inc ecx
sub al, 26
and ax, 37
jmp .bb_0.3
.bb_0.3:
cmp bl, dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
