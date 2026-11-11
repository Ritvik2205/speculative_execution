.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, 107 # instrumentation
lea eax, qword ptr [rdx + rcx + 56]
sub al, 63
test al, -71
lea di, qword ptr [rdi]
adc bl, al
add al, -47
cmp cl, 1
xor eax, 55
test al, -75
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
