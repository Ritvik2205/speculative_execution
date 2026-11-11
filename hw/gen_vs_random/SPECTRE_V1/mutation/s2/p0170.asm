.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, 112 # instrumentation
adc dl, cl
imul eax, esi
and rsi, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rsi], 102
cmovno rdx, rbx
sbb al, 33
jns .bb_0.1
jmp .exit_0
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
bts word ptr [r14 + rbx], 3
add di, bx
test rcx, rax
cmovb rcx, rdx
and rax, rdx
and rbx, 0b1111111111111 # instrumentation
adc cl, byte ptr [r14 + rbx]
bts dx, 26
neg dil
add cl, -61 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovnl rcx, qword ptr [r14 + rdi]
add eax, 1518653812
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
