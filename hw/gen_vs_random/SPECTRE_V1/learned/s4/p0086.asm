.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
movsx eax, dx
cmp eax, 100
cmp rax, -1877933118
and rax, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rax], dl
jns .bb_0.1
jmp .exit_0
.bb_0.1:
test al, -71
xor cl, -91
sub dil, bl
and sil, 111
xor dl, 71
sub bl, sil
and rdi, 0b1111111111111 # instrumentation
inc byte ptr [r14 + rdi]
test al, sil
cmp cl, dl
add cl, -127
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
