.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test al, 66
test eax, 1729060510
test al, -81
and rdx, 0b1111111111111 # instrumentation
xor rsi, qword ptr [r14 + rdx]
and bl, al
or sil, dl
jmp .bb_0.1
.bb_0.1:
jmp .bb_0.2
.bb_0.2:
and rsi, 0b1111111111111 # instrumentation
test word ptr [r14 + rsi], 3898
test dil, cl
or bl, al
btc si, ax
and sil, 74
or al, 25
xor di, 93
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
