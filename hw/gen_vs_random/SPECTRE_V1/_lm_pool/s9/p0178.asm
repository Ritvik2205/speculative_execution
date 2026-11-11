.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and dil, -103 # instrumentation
cmovbe di, di
and rbx, 0b1111111111111 # instrumentation
or rsi, qword ptr [r14 + rbx]
btr cx, dx
cmp al, cl
and rcx, 0b1111111111111 # instrumentation
xor dl, byte ptr [r14 + rcx]
jb .bb_0.1
jmp .exit_0
.bb_0.1:
add sil, cl
xor ax, 913
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
