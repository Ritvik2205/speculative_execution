.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea bx, qword ptr [rbx]
and rdi, 0b1111111111111 # instrumentation
xor bx, word ptr [r14 + rdi]
xor rcx, 22
add dil, dl
or cx, 74
and ebx, -52
test dil, -126
or ax, 11821
and dil, cl
and rax, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rax], 49
and rdi, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rdi], al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
