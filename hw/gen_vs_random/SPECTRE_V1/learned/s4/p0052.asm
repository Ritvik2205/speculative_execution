.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rdx], cl
mov al, bl
test al, 84
mov sil, dl
sub dil, sil
xor al, cl
sbb dl, bl
sbb al, sil
cmp al, 77
and rax, 0b1111111111111 # instrumentation
sub cl, byte ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
