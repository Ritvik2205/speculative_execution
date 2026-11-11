.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], sil
and rdx, 0b1111111111111 # instrumentation
cmovnbe rax, qword ptr [r14 + rdx]
or dil, -104
or bl, -80
or eax, 1470564945
xor al, -66
or al, al
sub di, dx
or eax, -1779536330
or dil, -16
xor al, bl
xor dl, -66
or ax, 7381
bts bx, 102
sub cl, 92
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
