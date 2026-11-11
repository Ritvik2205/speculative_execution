.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rsi], -68
sbb al, -112
imul eax, esi
add dl, 112 # instrumentation
adc dl, cl
cmovno rdx, rbx
jns .bb_0.1
jmp .exit_0
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
bts word ptr [r14 + rbx], 2
and rbx, 0b1111111111111 # instrumentation
adc cl, byte ptr [r14 + rbx]
bts dx, 26
add eax, -1174744897
cmovb rcx, rdx
add di, bx
test rcx, rax
and rax, rdx
neg dil
add cl, -61 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovnl rcx, qword ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
