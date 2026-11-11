.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
xor rsi, qword ptr [r14 + rdx]
and dil, al
sub al, -1
inc rdx
mov al, dl
sbb al, 118
sub al, 63
and rcx, 0b1111111111111 # instrumentation
cmp dl, byte ptr [r14 + rcx]
lea dx, qword ptr [rsi]
and cl, -57
sbb bl, sil
add sil, sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
