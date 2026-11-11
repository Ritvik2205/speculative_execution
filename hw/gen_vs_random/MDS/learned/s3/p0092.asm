.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or bl, dil
test edx, -372470678
jmp .bb_0.1
.bb_0.1:
test dl, -85
and bx, 98
and rax, 0b1111111111111 # instrumentation
test word ptr [r14 + rax], 31143
xor dl, cl
and rdi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdi], -180081263
jmp .bb_0.2
.bb_0.2:
and rsi, 0b1111111111111 # instrumentation
or bx, word ptr [r14 + rsi]
add dl, 99
xor ax, -6793
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
