.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
sub word ptr [r14 + rdx], 23
and rcx, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rcx]
sbb al, -4
dec dl
movsx eax, dil
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
mov bl, byte ptr [r14 + rax]
cmp sil, cl
add al, -102
jmp .bb_0.2
.bb_0.2:
sbb dil, 66
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
