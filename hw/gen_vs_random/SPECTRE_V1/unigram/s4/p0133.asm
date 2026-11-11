.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
bswap rsi
and rdi, 0b1111111111111 # instrumentation
inc word ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
mul word ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rsi], dl
and rsi, 0b1111111111111 # instrumentation
imul bx, word ptr [r14 + rsi], 57
add dl, 6 # instrumentation
adc rdi, 39
setnz al
jns .bb_0.1
jmp .exit_0
.bb_0.1:
bt rbx, rcx
cbw
test cl, dil
lea di, qword ptr [rbx]
add bl, 36 # instrumentation
setnl al
cmovnbe rsi, rax
cmovl rcx, rax
cmovl eax, edi
and rbx, 0b1111111111111 # instrumentation
and word ptr [r14 + rbx], cx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
