.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and al, -103 # instrumentation
cmovbe ax, ax
add al, -80
and rdx, 0b1111111111111 # instrumentation
sbb dil, byte ptr [r14 + rdx]
jmp .bb_0.1
.bb_0.1:
test dil, -126
and rax, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rax]
sbb ebx, -116
and dl, dl
xor ax, 30996
and al, -68
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
