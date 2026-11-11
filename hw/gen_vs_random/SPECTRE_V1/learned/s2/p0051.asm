.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
inc rsi
and rdi, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rdi]
sub al, sil
lea rax, qword ptr [rdx + rbx + 41]
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], cl
and rdx, 0b1111111111111 # instrumentation
xor bl, byte ptr [r14 + rdx]
test bl, -8
and rax, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rax], dil
and bx, -118
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
