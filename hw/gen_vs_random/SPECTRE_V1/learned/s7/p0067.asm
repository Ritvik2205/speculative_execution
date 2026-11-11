.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rdi], bl
sub bl, cl
mov al, bl
lea rax, qword ptr [rcx + rsi + 45]
and rdx, 0b1111111111111 # instrumentation
and di, word ptr [r14 + rdx]
xor dil, -37
and rcx, 0b1111111111111 # instrumentation
sub al, byte ptr [r14 + rcx]
add dl, cl
inc dil
sbb dl, dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
