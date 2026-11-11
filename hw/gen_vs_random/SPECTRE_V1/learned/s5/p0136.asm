.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, 86 # instrumentation
and rbx, 0b1111111111111 # instrumentation
sbb dl, byte ptr [r14 + rbx]
inc rax
add sil, sil
js .bb_0.1
jmp .bb_0.2
.bb_0.1:
and rsi, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rsi], rbx
jb .bb_0.2
jmp .bb_0.3
.bb_0.2:
test sil, 47
jp .bb_0.3
jmp .exit_0
.bb_0.3:
lea ax, qword ptr [rdx + rbx + 73]
sbb al, cl
lea rax, qword ptr [rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
