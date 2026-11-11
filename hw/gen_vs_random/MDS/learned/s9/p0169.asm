.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test cl, 62
btr ax, cx
and rdx, 0b1111111111111 # instrumentation
xor rax, qword ptr [r14 + rdx]
test eax, -1634766116
test al, 66
test rcx, -613256812
or edx, -78
test bl, -14
or cl, 7
and rsi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rsi], -38
test ax, 6779
btr ax, cx
and rdx, 0b1111111111111 # instrumentation
or bl, byte ptr [r14 + rdx]
test dl, al
test dl, 9
cmovnp ax, dx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
