.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or al, -78
and rsi, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rsi], 2
and rcx, 0b1111111111111 # instrumentation
or bx, word ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
and rsi, 0b111 # instrumentation
bt qword ptr [r14 + rax], rsi
test edi, -1252846009
and di, 99
or cl, 39
xor cl, sil
jmp .bb_0.1
.bb_0.1:
bt ax, cx
and al, 35
and rbx, 0b1111111111111 # instrumentation
cmovnl rdx, qword ptr [r14 + rbx]
or bl, sil
xor dl, bl
jmp .bb_0.2
.bb_0.2:
xor al, -26
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
