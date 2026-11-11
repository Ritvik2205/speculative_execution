.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or sil, -44
and rax, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rax], -82
and rsi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rsi], dil
or bl, 114
and rax, 0b1111111111111 # instrumentation
add dil, byte ptr [r14 + rax]
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], bl
or ax, -18131
and dil, al
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], -1923530546
test al, -104
jmp .bb_0.1
.bb_0.1:
lea dx, qword ptr [rdx]
lea rdx, qword ptr [rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
