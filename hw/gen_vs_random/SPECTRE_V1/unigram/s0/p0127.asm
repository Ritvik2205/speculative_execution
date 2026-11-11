.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
adc bl, al
cmovle dx, cx
not ebx
imul dl
jnp .bb_0.1
jmp .exit_0
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
add bx, word ptr [r14 + rax]
test dl, -7
xor rsi, 17
add cl, -51 # instrumentation
cmovl ebx, ecx
and rax, 0b1111111111111 # instrumentation
and di, 0b111 # instrumentation
bts word ptr [r14 + rax], di
and rsi, 0b1111111111111 # instrumentation
adc bl, byte ptr [r14 + rsi]
and rbx, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rbx], 27
and rcx, 0b1111111111111 # instrumentation
or rsi, qword ptr [r14 + rcx]
sub cl, dil
add dl, 71 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovl di, word ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rbx], rcx
lea eax, qword ptr [rsi + rsi + 10]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
