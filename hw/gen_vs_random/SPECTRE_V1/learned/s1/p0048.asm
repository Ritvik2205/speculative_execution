.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
xor ebx, dword ptr [r14 + rcx]
sub ax, -16648
and dl, -92
and dil, dl
sub al, dil
and rax, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rax], 13
and rax, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rax], 37
adc cx, -30
cmp dl, 119
xor ebx, 86
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
