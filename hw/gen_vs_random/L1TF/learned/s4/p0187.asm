.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
inc rdi
cmovno ax, di
and rsi, 0b1111111111000 # instrumentation
lock inc qword ptr [r14 + rsi]
jmp .bb_0.1
.bb_0.1:
add cl, -34 # instrumentation
and rax, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rax], 60
add bl, 68
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], -6
and rsi, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rsi], -107
and rdi, 0b1111111111111 # instrumentation
cmovle ebx, dword ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
and al, byte ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
