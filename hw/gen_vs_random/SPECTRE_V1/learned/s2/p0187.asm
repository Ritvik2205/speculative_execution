.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, 27 # instrumentation
mov dl, dil
sbb bl, al
add al, -13
sbb cl, 105
test cl, -62
test al, 40
and rsi, 0b1111111111111 # instrumentation
imul ebx, dword ptr [r14 + rsi]
cmp al, dil
dec al
test ebx, -1465665890
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
