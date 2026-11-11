.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
xor edi, dword ptr [r14 + rdi]
sub bl, sil
cmp sil, cl
xchg rdx, rax
and edi, -102
adc ebx, 66
test al, -24
sub bl, dil
add al, bl
and rcx, 0b1111111111111 # instrumentation
imul dx, word ptr [r14 + rcx]
and dl, -53
and bl, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
