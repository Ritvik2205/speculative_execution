.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or eax, esi
and ax, 7954
xor al, dl
and rbx, 0b1111111111111 # instrumentation
sub esi, dword ptr [r14 + rbx]
test ecx, 95
sbb dil, bl
jmp .bb_0.1
.bb_0.1:
lea ebx, qword ptr [rbx]
add al, 93
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
