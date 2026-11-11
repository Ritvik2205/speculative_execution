.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or al, -47
and rax, 0b1111111111111 # instrumentation
cmovnbe rdi, qword ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
sub sil, byte ptr [r14 + rdx]
or al, -83
and rdi, 0b1111111111111 # instrumentation
mov dl, byte ptr [r14 + rdi]
add bl, dil
cmp al, 116
add dil, al
test sil, cl
and rcx, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rcx], al
and al, 75
or dil, sil
test al, 72
sbb al, cl
and rax, 86
cmp eax, -2073187604
xor dil, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
