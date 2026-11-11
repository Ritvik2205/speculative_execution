.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and cx, ax
xor rbx, 89
test dil, 46
or cl, 39
test cl, 54
test ecx, -1843375753
xor bl, dl
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
bts word ptr [r14 + rbx], 6
test eax, 1287331633
test al, sil
test bl, sil
xor rcx, 71
and rsi, 0b1111111111111 # instrumentation
test word ptr [r14 + rsi], 3898
xor rcx, -2
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
