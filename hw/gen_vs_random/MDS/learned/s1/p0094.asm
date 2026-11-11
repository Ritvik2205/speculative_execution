.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or dil, 16
jmp .bb_0.1
.bb_0.1:
test rdi, 77
and ax, 19740
and rdx, 0b1111111111111 # instrumentation
cmovnl rdi, qword ptr [r14 + rdx]
or rax, -141551502
test dl, cl
xor cl, al
jmp .bb_0.2
.bb_0.2:
xor cl, al
jmp .bb_0.3
.bb_0.3:
and dx, 60
and rdi, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rdi], 69
or rbx, -77
xor sil, 27
and rbx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rbx], dil
or dil, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
