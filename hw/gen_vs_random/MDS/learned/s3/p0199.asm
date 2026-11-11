.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or al, 30
and rbx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rbx], al
or bl, 127
xor dl, sil
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], sil
and rbx, 0b1111111111111 # instrumentation
and rsi, 0b111 # instrumentation
bt qword ptr [r14 + rbx], rsi
or al, al
jmp .bb_0.1
.bb_0.1:
xor dil, bl
or al, dil
jmp .bb_0.2
.bb_0.2:
or cl, dl
or dil, dl
and rsi, 0b1111111111111 # instrumentation
xor rbx, qword ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
or dil, byte ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
