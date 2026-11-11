.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -45 # instrumentation
cmovs rdi, rdi
and rsi, 0b1111111111111 # instrumentation
and bx, 0b111 # instrumentation
bt word ptr [r14 + rsi], bx
jmp .bb_0.1
.bb_0.1:
sets al
lea ax, qword ptr [rbx + rax + 97]
and rdx, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rdx], di
sub al, cl
jmp .bb_0.2
.bb_0.2:
test bl, 84
cmovb si, di
jmp .bb_0.3
.bb_0.3:
sbb al, sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
