.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, -123 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovp dx, word ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rsi], 1
and rax, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rax], 45
and rax, 0b1111111111111 # instrumentation
or rsi, qword ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rcx], 1
and rdi, 0b1111111111111 # instrumentation
cmovbe rdx, qword ptr [r14 + rdi]
or di, si
xor rsi, -124
and rdi, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rdi], 59
xor al, 86
and sil, 55
lea edi, qword ptr [rsi]
or rax, -357903210
and rdx, 0b1111111111111 # instrumentation
cmovs cx, word ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
adc word ptr [r14 + rdi], 79
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], 53
and rdi, 0b1111111111111 # instrumentation
imul byte ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
