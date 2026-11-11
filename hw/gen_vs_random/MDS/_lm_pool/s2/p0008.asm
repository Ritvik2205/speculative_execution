.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor di, 93
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], sil
or cl, 119
and rax, 0b1111111111111 # instrumentation
or rsi, qword ptr [r14 + rax]
and cx, -2
test sil, dl
and rsi, 0b1111111111111 # instrumentation
xor rbx, qword ptr [r14 + rsi]
xor dl, 40
btr rbx, 93
and rcx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rcx], sil
and cl, 79
bt rcx, 56
jmp .bb_0.1
.bb_0.1:
and esi, 61
xor cl, dil
bt cx, ax
cmovnbe bx, ax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
