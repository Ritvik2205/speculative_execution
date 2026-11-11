.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sbb al, 104
and rsi, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rsi], 102
add dl, 112 # instrumentation
adc dl, cl
cmovno rdx, rbx
imul eax, esi
jns .bb_0.1
jmp .exit_0
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
adc cl, byte ptr [r14 + rbx]
and rax, rdx
add cl, -61 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovnl rcx, qword ptr [r14 + rdi]
bts dx, 26
neg dil
cmovb rcx, rdx
add di, bx
test rcx, rax
and rbx, 0b1111111111111 # instrumentation
bts word ptr [r14 + rbx], 6
add eax, 1518653812
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
