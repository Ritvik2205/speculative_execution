.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
mov rdx, qword ptr [r14 + rsi]
sub cl, -49
xor bl, sil
and rax, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rax], sil
xor bl, sil
jb .bb_0.1
jmp .exit_0
.bb_0.1:
sub dl, 41
xor al, 89
and rbx, 0b1111111111111 # instrumentation
or sil, byte ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
