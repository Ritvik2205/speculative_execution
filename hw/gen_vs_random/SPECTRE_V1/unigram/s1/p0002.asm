.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
imul ax, word ptr [r14 + rdi]
and rbx, 0b1111111111000 # instrumentation
lock dec qword ptr [r14 + rbx]
mov cl, bl
adc cl, sil
and rdi, 0b1111111111111 # instrumentation
mov edx, dword ptr [r14 + rdi]
adc cl, sil
and rdi, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rdi], 63
and rsi, 0b1111111111111 # instrumentation
adc qword ptr [r14 + rsi], 59
and rax, 0b1111111111111 # instrumentation
sub ax, word ptr [r14 + rax]
loopne .bb_0.1
jmp .exit_0
.bb_0.1:
add dl, 63 # instrumentation
cmovle dx, bx
and rsi, 0b1111111111111 # instrumentation
add rdi, qword ptr [r14 + rsi]
mov bx, 70
and rsi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rsi], cl
and rax, 0b1111111111111 # instrumentation
dec dword ptr [r14 + rax]
setnz cl
and rax, 0b1111111111111 # instrumentation
and rcx, 0b111 # instrumentation
bt qword ptr [r14 + rax], rcx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
