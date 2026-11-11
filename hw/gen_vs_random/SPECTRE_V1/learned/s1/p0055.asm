.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xchg esi, edx
and rbx, 0b1111111111111 # instrumentation
cmovs rax, qword ptr [r14 + rbx]
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], al
cmp dl, 119
dec al
adc cl, -81
adc ebx, 73
sub bl, -19
add ax, 6656
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
