.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or al, cl
test sil, 17
xor bl, dl
xor al, cl
test dil, 46
and al, 35
test sil, bl
jmp .bb_0.1
.bb_0.1:
or al, bl
xor al, 8
xor bl, dl
and bx, 41
and rsi, 0b1111111111111 # instrumentation
test word ptr [r14 + rsi], -1734
test al, dil
and rdx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rdx], 3
xor cl, al
test ecx, -1843375753
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
