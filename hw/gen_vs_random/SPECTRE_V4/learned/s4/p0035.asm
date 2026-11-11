.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, 19
and cl, dl
and rdx, 0b1111111111111 # instrumentation
cmovz ax, word ptr [r14 + rdx]
cmp rdi, 28
or al, -50
adc cl, 31
sbb cl, -69
cmp dl, al
sbb bl, al
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], dl
and ax, 16313
sub sil, -35
add cl, bl
cmp sil, 113
xor bl, 27
test al, 18
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
