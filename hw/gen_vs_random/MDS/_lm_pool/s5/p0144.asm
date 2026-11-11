.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and cl, -103 # instrumentation
cmovbe cx, cx
and rcx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rcx], dil
and rsi, 0b1111111111111 # instrumentation
and dil, byte ptr [r14 + rsi]
test al, 91
and di, 91
and rcx, 0b1111111111111 # instrumentation
and al, byte ptr [r14 + rcx]
or al, al
and dl, -73
and rbx, 0b1111111111111 # instrumentation
or ax, word ptr [r14 + rbx]
xor ax, -4010
or bl, -54
or al, 37
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
