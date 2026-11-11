.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, -122 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovle dx, word ptr [r14 + rsi]
test al, -32
sbb cl, dl
lea bx, qword ptr [rdx]
sbb dl, bl
and rdx, 0b1111111111111 # instrumentation
sub al, byte ptr [r14 + rdx]
jmp .bb_0.1
.bb_0.1:
test dl, 84
jmp .bb_0.2
.bb_0.2:
and rax, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rax], cl
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], bl
and rax, 0b1111111111111 # instrumentation
and byte ptr [r14 + rax], sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
