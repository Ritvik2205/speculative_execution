.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or al, 30
or esi, edi
and al, -8
and bl, dl
or sil, dil
btc ax, 24
or bl, 43
jmp .bb_0.1
.bb_0.1:
test sil, 41
or al, -24
or sil, -49
jmp .bb_0.2
.bb_0.2:
or sil, bl
and rax, 0b1111111111000 # instrumentation
and dx, 0b111 # instrumentation
lock btr word ptr [r14 + rax], dx
xor bl, dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
