.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test dx, bx
and rcx, 0b1111111111111 # instrumentation
sub al, byte ptr [r14 + rcx]
and cl, al
and dl, sil
sub cl, dl
cmp bl, cl
xchg dl, al
and rax, 0b1111111111111 # instrumentation
mov dl, byte ptr [r14 + rax]
mov bl, dl
cmp sil, bl
sbb cl, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
