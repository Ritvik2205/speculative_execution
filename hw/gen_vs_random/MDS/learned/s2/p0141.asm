.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test bl, -14
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], dl
test al, -7
or dl, bl
test dl, 48
or dil, dil
xor al, 34
and rcx, 0b1111111111111 # instrumentation
or sil, byte ptr [r14 + rcx]
and bl, 68
and rax, 4
or dil, -78
and ax, -12519
and rsi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rsi], al
jmp .bb_0.1
.bb_0.1:
test rbx, 60
xor al, dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
