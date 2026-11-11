.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and bx, 60
bts rcx, rdx
test dil, 46
xor sil, 110
xor dil, cl
and rbx, 0b1111111111111 # instrumentation
or rdi, qword ptr [r14 + rbx]
and cl, -71
and rbx, 65
jmp .bb_0.1
.bb_0.1:
and sil, -69
test rcx, -613256812
and rdi, 0b1111111111111 # instrumentation
xor rcx, qword ptr [r14 + rdi]
xor bx, 46
and rdi, 0b1111111111111 # instrumentation
xor dl, byte ptr [r14 + rdi]
xor dil, -5
jmp .bb_0.2
.bb_0.2:
and rcx, 0b1111111111111 # instrumentation
xor rsi, qword ptr [r14 + rcx]
test dl, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
