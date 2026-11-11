.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test sil, dl
lea ebx, qword ptr [rdi]
test dl, -7
and rbx, 0b1111111111111 # instrumentation
sub al, byte ptr [r14 + rbx]
sub bl, cl
cmovbe cx, dx
and rax, 0b1111111111111 # instrumentation
adc edx, dword ptr [r14 + rax]
sub al, cl
sub sil, -18
and rbx, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rbx]
sub ax, -15315
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
