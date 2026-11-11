.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or bl, 44
sbb al, 118
xor al, 54
xor dil, bl
sub cl, sil
js .bb_0.1
jmp .bb_0.2
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rdx], eax
jmp .bb_0.2
.bb_0.2:
mov cl, dl
add cl, -127
and al, -23
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
