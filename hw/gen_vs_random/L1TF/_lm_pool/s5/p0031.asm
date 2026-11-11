.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
inc rdx
setno dil
sub dil, -39
and rbx, 0b1111111111111 # instrumentation
mov dil, byte ptr [r14 + rbx]
sbb dl, al
jmp .bb_0.1
.bb_0.1:
xor cl, 89
or dl, 8
and rax, 1994547909
lea rsi, qword ptr [rbx + rax]
and ax, 7954
sbb bl, -88
mov ebx, 675401645
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
