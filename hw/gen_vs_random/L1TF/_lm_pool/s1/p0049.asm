.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, 86 # instrumentation
and rdx, 0b1111111111111 # instrumentation
sbb cl, byte ptr [r14 + rdx]
imul al
sub cl, 86
or dil, dl
xor cl, dil
and rdi, 0b1111111111111 # instrumentation
mov dl, byte ptr [r14 + rdi]
sbb dl, bl
xor bl, sil
jmp .bb_0.1
.bb_0.1:
xchg ax, di
cmovle rcx, rdi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
