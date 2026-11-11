.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, 27 # instrumentation
mov bl, dl
sbb dil, -106
or dil, dil
or ax, 19104
sub sil, dl
bts ax, 38
mov al, dil
mov sil, cl
test ax, -32457
and rdi, 0b1111111111111 # instrumentation
cmp bl, byte ptr [r14 + rdi]
and eax, 933895314
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rax], 19
test dl, -7
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
