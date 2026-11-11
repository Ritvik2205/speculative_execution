.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or eax, 287965578
and rsi, 0b1111111111111 # instrumentation
mov di, word ptr [r14 + rsi]
sbb dil, bl
add cl, sil
xor al, bl
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
add rax, qword ptr [r14 + rdx]
jmp .bb_0.2
.bb_0.2:
xor dl, sil
sub edi, 27
and rax, 0b1111111111111 # instrumentation
mov dil, byte ptr [r14 + rax]
jmp .bb_0.3
.bb_0.3:
sbb bl, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
