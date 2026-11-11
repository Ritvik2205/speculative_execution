.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor bx, 41
cmp eax, 123533400
and ax, 7954
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
cmovo si, word ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
add cl, byte ptr [r14 + rsi]
cmp bx, -21
and rcx, 0b1111111111111 # instrumentation
mul word ptr [r14 + rcx]
and al, -68
and bl, 89
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
