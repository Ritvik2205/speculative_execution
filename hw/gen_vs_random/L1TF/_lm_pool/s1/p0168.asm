.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add sil, 104 # instrumentation
mov esi, 56
add dl, -1
adc ax, 87
and rdi, 0b1111111111111 # instrumentation
cmovb rax, qword ptr [r14 + rdi]
jmp .bb_0.1
.bb_0.1:
test al, -70
and rax, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rax], 65
xor al, 38
sbb cl, -11
or al, -2
test eax, 899472326
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
