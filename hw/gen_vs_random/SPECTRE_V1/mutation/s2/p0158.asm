.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdx], dl
and rdi, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rdi], al
and rax, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rax], 78
and rcx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rcx], 1643105692
and rbx, 0b1111111111111 # instrumentation
sub al, byte ptr [r14 + rbx]
imul cl
and rdi, 0b1111111111111 # instrumentation
and ecx, 0b111 # instrumentation
btc dword ptr [r14 + rdi], ecx
and rax, 0b1111111111111 # instrumentation
sub word ptr [r14 + rax], 41
loopne .bb_0.1
jmp .exit_0
.bb_0.1:
bswap rcx
and rbx, 0b1111111111000 # instrumentation
and rdx, 0b111 # instrumentation
lock btc qword ptr [r14 + rbx], rdx
add bl, -126 # instrumentation
cwd
and rsi, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rsi], 354197880
imul cx
bt rdx, rdx
and rbx, 0b1111111111111 # instrumentation
cmovnz cx, word ptr [r14 + rbx]
add bl, 2 # instrumentation
and rdi, 0b1111111111111 # instrumentation
setnle byte ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
