.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and bl, 109 # instrumentation
cmovs si, dx
setno sil
and dil, -22
and rdi, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rdi]
xor sil, al
xor al, bl
xor al, 89
jmp .bb_0.1
.bb_0.1:
jmp .bb_0.2
.bb_0.2:
xchg ax, bx
test cl, 19
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
