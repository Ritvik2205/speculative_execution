.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
sub word ptr [r14 + rcx], 113
test sil, 97
sub al, bl
sbb al, 118
sub al, 63
inc bl
and bl, -65
sub al, cl
lea ax, qword ptr [rdi + rsi + 62]
mov dil, bl
xor sil, -33
and rdx, 0b1111111111111 # instrumentation
movsx bx, byte ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
