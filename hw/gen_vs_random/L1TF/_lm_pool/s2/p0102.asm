.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
xor eax, dword ptr [r14 + rcx]
test cl, dl
xor dl, 9
cmp rbx, 22
sub sil, dil
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
sub ax, word ptr [r14 + rbx]
jmp .bb_0.2
.bb_0.2:
and rdx, 0b1111111111111 # instrumentation
add ebx, dword ptr [r14 + rdx]
xor cl, dl
test eax, -2032743474
sub si, 83
add ax, 32140
sbb bl, sil
and rdx, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rdx], 3
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
