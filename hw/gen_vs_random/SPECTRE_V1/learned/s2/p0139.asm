.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or al, sil
sub dl, 96
xchg eax, edi
sub al, dl
movsx di, bl
and rcx, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
xor bl, byte ptr [r14 + rdi]
cmp al, sil
sub al, cl
sbb dil, sil
jns .exit_0
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
