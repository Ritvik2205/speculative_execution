.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test bl, dl
lea rcx, qword ptr [rbx + rax + 79]
and rax, 1713273566
adc al, -92
add dil, 72
and rcx, 0b1111111111111 # instrumentation
xor ax, word ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
xor dl, byte ptr [r14 + rdi]
jmp .bb_0.1
.bb_0.1:
test sil, -31
xor cx, 19
sub al, -66
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
