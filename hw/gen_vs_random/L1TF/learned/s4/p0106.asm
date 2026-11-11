.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or al, dl
sbb al, 61
and ax, 26813
and rsi, 0b1111111111111 # instrumentation
add al, byte ptr [r14 + rsi]
and al, -68
jmp .bb_0.1
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdi], 69
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], -1923530546
btr cx, bx
jmp .bb_0.2
.bb_0.2:
and rbx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rbx], 0b1000000000000000000000000000000 # instrumentation
bsr edi, dword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
mov sil, byte ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
