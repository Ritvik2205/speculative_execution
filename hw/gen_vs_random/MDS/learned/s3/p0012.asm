.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
sub word ptr [r14 + rdi], 85
test dl, 9
and rsi, 0b1111111111000 # instrumentation
lock not word ptr [r14 + rsi]
test bl, al
and al, 14
and bl, bl
or rcx, -17
and al, -55
and rdx, 0b1111111111111 # instrumentation
cmovp si, word ptr [r14 + rdx]
xor di, -83
or al, bl
test cl, al
test cl, 101
or sil, dl
or dil, 12
or cl, 119
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
