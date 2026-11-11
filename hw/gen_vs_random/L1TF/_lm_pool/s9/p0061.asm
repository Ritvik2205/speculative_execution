.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rsi], -1
add dil, dil
and rdi, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rdi], 58
bts edx, 30
and dil, dil
and rax, 0b1111111111111 # instrumentation
mov bx, word ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rbx], sil
sbb cl, -11
btr ax, 64
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], -1923530546
and rbx, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
