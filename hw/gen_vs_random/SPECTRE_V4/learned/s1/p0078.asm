.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
inc eax
adc sil, bl
add dil, dl
xor dil, -23
cmp rcx, -121
and dl, -53
or dl, bl
and rdi, 0b1111111111111 # instrumentation
cmovz ecx, dword ptr [r14 + rdi]
test bl, -116
neg rdi
cmp dil, 101
sbb sil, -124
add al, bl
mov al, bl
mov dl, 81
adc dil, -15
sbb al, -43
sbb dl, cl
mov dil, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
