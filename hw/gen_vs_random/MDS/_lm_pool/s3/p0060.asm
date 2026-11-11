.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor dl, -59
and rdx, 0b1111111111111 # instrumentation
xor bl, byte ptr [r14 + rdx]
xor bl, al
xor cl, 24
or al, 16
and rdx, 0b1111111111111 # instrumentation
and rsi, 0b111 # instrumentation
bt qword ptr [r14 + rdx], rsi
xor al, bl
jmp .bb_0.1
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
test word ptr [r14 + rsi], -1734
and bl, 68
or sil, dl
xor dl, -43
xor cl, 55
xor al, -26
and sil, dil
and cl, cl
and ecx, -104
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
