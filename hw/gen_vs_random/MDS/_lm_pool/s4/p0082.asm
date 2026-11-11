.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
btc rsi, rsi
test cl, -113
or bl, bl
and rdi, 0b1111111111111 # instrumentation
xor sil, byte ptr [r14 + rdi]
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], cl
not al
xor sil, 27
xor ax, 31969
and rdi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdi], 96
xor ax, -5889
test al, -81
jmp .bb_0.1
.bb_0.1:
or dl, sil
test dil, sil
not dl
test cl, 0
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
