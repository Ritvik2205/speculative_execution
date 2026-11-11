.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and dl, -73
and ax, -16061
or cl, al
and bl, dil
and cx, -8
xor cl, 55
or al, -24
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], dil
or bl, -54
xor sil, -126
and rdi, 0b1111111111111 # instrumentation
and rsi, 0b111 # instrumentation
bts qword ptr [r14 + rdi], rsi
jmp .bb_0.1
.bb_0.1:
xor cl, 15
test al, -81
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
