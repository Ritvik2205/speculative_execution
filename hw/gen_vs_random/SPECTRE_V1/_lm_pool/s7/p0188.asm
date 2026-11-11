.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
dec di
and rbx, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rbx]
sub al, 63
and rdx, 0b1111111111111 # instrumentation
inc byte ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
imul ax, word ptr [r14 + rbx], 28
sbb al, 118
jmp .bb_0.1
.bb_0.1:
lea rdx, qword ptr [rcx + rdi + 63]
test dl, 113
and bl, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
