.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor dl, -123
and rcx, 0b1111111111111 # instrumentation
cmovz di, word ptr [r14 + rcx]
add bl, dil
test dil, al
mov dil, dl
and rdi, 0b1111111111111 # instrumentation
sub dx, word ptr [r14 + rdi]
dec al
adc al, cl
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], al
or dil, dl
cmp al, -106
cmp dl, -82
or al, 1
and dl, sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
