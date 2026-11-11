.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test cl, sil
or cl, cl
and rdx, 0b1111111111111 # instrumentation
and rsi, 0b111 # instrumentation
bt qword ptr [r14 + rdx], rsi
xor dl, sil
test rsi, 50
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], dil
jmp .bb_0.1
.bb_0.1:
or al, sil
test dl, al
or al, dl
and bl, 68
and rax, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rax], 1
and bl, sil
test al, bl
test al, 127
and rdx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdx], 14
test sil, -96
xor rdx, -59
xor bl, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
