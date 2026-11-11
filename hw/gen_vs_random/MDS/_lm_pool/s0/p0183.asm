.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test al, 66
or bl, bl
or al, bl
or al, -22
test bl, dl
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], sil
xor bl, dil
test sil, cl
xor sil, cl
and rsi, 0b1111111111111 # instrumentation
xor word ptr [r14 + rsi], 57
or dl, sil
and rdx, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
