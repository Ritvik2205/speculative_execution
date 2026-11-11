.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, 67 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovs cx, word ptr [r14 + rbx]
sub sil, -18
test ax, 636
and rsi, 0b1111111111111 # instrumentation
inc byte ptr [r14 + rsi]
and rdi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdi], al
lea ax, qword ptr [rcx + rdx + 48]
cmp dl, cl
sbb rax, 342397759
mov sil, bl
and rsi, 0b1111111111111 # instrumentation
sub dl, byte ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
