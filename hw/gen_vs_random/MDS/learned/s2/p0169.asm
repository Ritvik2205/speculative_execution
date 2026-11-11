.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or al, -61
and cl, sil
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], dl
xor bl, 67
and al, sil
and cx, -2
or al, al
and dl, -73
jmp .bb_0.1
.bb_0.1:
jmp .bb_0.2
.bb_0.2:
and rdx, 0b1111111111111 # instrumentation
and rsi, 0b111 # instrumentation
bt qword ptr [r14 + rdx], rsi
jmp .bb_0.3
.bb_0.3:
test cl, -86
and si, -121
or bl, bl
or rax, 52
and rsi, 0b1111111111111 # instrumentation
cmovp dx, word ptr [r14 + rsi]
bt dx, cx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
