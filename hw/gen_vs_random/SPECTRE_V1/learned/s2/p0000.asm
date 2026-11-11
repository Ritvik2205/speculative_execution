.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rsi], 6
and rsi, 0b1111111111111 # instrumentation
or eax, dword ptr [r14 + rsi]
js .bb_0.1
jmp .exit_0
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
sub al, byte ptr [r14 + rcx]
xor al, dil
cmp dl, sil
add al, -72
and cl, -57
and edx, -62
test al, 40
or cl, -98
test cl, -62
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
