.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, 112 # instrumentation
adc dl, cl
cmovno rdx, rbx
and rsi, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rsi], 57
sbb al, -14
imul eax, esi
jns .bb_0.1
jmp .exit_0
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
adc cl, byte ptr [r14 + rbx]
add di, bx
test rcx, rax
add eax, -371144449
and rbx, 0b1111111111111 # instrumentation
bts word ptr [r14 + rbx], 2
add cl, -61 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovnl rcx, qword ptr [r14 + rdi]
and rax, rdx
cmovb rcx, rdx
bts dx, 207
neg dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
