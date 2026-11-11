.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
adc dl, sil
and rdx, 0b1111111111000 # instrumentation
and rsi, 0b111 # instrumentation
lock btc qword ptr [r14 + rdx], rsi
sub cl, dil
jp .bb_0.1
jmp .exit_0
.bb_0.1:
sbb al, al
cmp dl, -115
add al, 27 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovle rsi, qword ptr [r14 + rsi]
and rsi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rsi], sil
and rbx, 0b1111111111111 # instrumentation
add dx, word ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
cmovz dx, word ptr [r14 + rax]
and rcx, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rcx], 78
and rax, 0b1111111111111 # instrumentation
or byte ptr [r14 + rax], al
and rdx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rdx], cl
and rdi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdi], 55
add bl, 60 # instrumentation
and rax, 0b1111111111111 # instrumentation
setno byte ptr [r14 + rax]
lea rax, qword ptr [rsi]
add cl, 83 # instrumentation
setbe bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
