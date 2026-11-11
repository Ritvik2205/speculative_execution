.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor cl, 24
xor al, al
and rbx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rbx], -72
xor dl, al
or al, 16
and dl, dil
jmp .bb_0.1
.bb_0.1:
jmp .bb_0.2
.bb_0.2:
and rbx, 0b1111111111111 # instrumentation
or di, word ptr [r14 + rbx]
and al, al
and dil, dil
and rsi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rsi], cl
and rcx, 0b1111111111111 # instrumentation
or rsi, qword ptr [r14 + rcx]
and al, 49
and bx, 17
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
