.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test ax, si
xchg esi, edi
or bl, -88
xor al, cl
test ax, 13284
jmp .bb_0.1
.bb_0.1:
cmp al, -119
sbb bl, dil
xchg rcx, rax
and rdi, 0b1111111111111 # instrumentation
add rax, qword ptr [r14 + rdi]
test dl, 84
sub dl, dil
or bl, dil
add bl, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
