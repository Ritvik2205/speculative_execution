.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test al, cl
test sil, -55
or al, al
not al
xor al, 55
test ebx, -961564216
xor sil, 94
test rax, 1978892575
or dil, al
or dil, cl
xor al, -26
or al, 54
xor bl, 67
and rsi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rsi], al
or bl, -52
xor al, sil
and rcx, 0b1111111111111 # instrumentation
or rdx, qword ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
