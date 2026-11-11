.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rsi], 57
add dl, 112 # instrumentation
adc dl, cl
cmovno rdx, rbx
imul eax, esi
sbb al, 66
jns .bb_0.1
jmp .exit_0
.bb_0.1:
bts dx, 207
add cl, -61 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovnl rcx, qword ptr [r14 + rdi]
add di, bx
and rbx, 0b1111111111111 # instrumentation
adc cl, byte ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
bts word ptr [r14 + rbx], 3
add eax, -371144449
and rax, rdx
neg dil
test rcx, rax
cmovb rcx, rdx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
