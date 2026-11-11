.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and al, -54
or ebx, 0b1000000000000000000000000000000 # instrumentation
bsf eax, ebx
sbb bl, dl
sub dil, -111
lea si, qword ptr [rbx + rdi + 35]
or ax, 18658
jp .bb_0.1
jmp .exit_0
.bb_0.1:
sub dl, al
test al, 40
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
