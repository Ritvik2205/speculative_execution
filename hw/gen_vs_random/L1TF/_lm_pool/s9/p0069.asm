.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and al, -103 # instrumentation
cmovbe ax, ax
and rcx, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rcx]
xor dl, cl
and ax, 26813
xor di, 72
and di, 77
and rax, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rax], dl
xor ax, 30996
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
