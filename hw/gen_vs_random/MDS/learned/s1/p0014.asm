.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rcx], sil
or bl, -125
test dil, dl
test esi, 425331143
xor al, bl
jmp .bb_0.1
.bb_0.1:
or al, -58
and rsi, 0b1111111111111 # instrumentation
or ax, word ptr [r14 + rsi]
and ax, -10351
xor al, dl
test al, 22
and edx, -44
xor cl, -13
and rcx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rcx], -108
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
