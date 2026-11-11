.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, 62 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovp di, word ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
cmovz rcx, qword ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rax], 0
imul rcx
or rdx, 11
cmovns esi, edx
mov bl, cl
adc al, -61
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
test word ptr [r14 + rcx], cx
lea esi, qword ptr [rdi + rsi + 45859]
and rdi, 0b1111111111111 # instrumentation
mov bx, word ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], 0b1000000000000000 # instrumentation
bsf dx, word ptr [r14 + rbx]
add dl, 120 # instrumentation
adc cl, 66
or rdx, 11
and rax, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
