.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, -48 # instrumentation
lea ecx, qword ptr [rcx + rbx]
adc sil, cl
and rdx, 0b1111111111111 # instrumentation
add byte ptr [r14 + rdx], cl
and rsi, 0b1111111111111 # instrumentation
add byte ptr [r14 + rsi], cl
jmp .bb_0.1
.bb_0.1:
xor cl, 29
and rsi, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rsi], di
lea rdi, qword ptr [rdx + rsi + 39]
dec dl
lea di, qword ptr [rbx]
adc rdi, 85
and rdx, 0b1111111111111 # instrumentation
cmovnl bx, word ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
sub cl, byte ptr [r14 + rdx]
xor bl, dil
cmovz ecx, edx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
