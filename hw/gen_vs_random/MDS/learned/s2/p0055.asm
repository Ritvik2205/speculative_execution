.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test sil, cl
or al, -24
and rsi, 0b1111111111111 # instrumentation
cmovnp rbx, qword ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rsi], cl
and cl, cl
or al, dl
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], bl
and sil, sil
or al, dil
xor dl, al
jmp .bb_0.1
.bb_0.1:
xor al, 115
and ecx, -104
xor bl, -27
test al, 127
test rax, -648054011
or al, 74
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
