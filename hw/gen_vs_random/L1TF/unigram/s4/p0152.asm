.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rcx], 66
setb cl
and rax, 363226538
and rbx, 0b1111111111000 # instrumentation
lock btc dword ptr [r14 + rbx], 100
and rsi, 0b1111111111111 # instrumentation
adc ecx, dword ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
cmovnb bx, word ptr [r14 + rbx]
add dl, -18 # instrumentation
and rax, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rax]
mov ebx, edx
and rcx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rcx], 52
lea cx, qword ptr [rdi]
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rax], edi
and rbx, 0b1111111111111 # instrumentation
and ax, word ptr [r14 + rbx]
imul cx, ax, 62
setno bl
mov cl, bl
and rcx, 0b1111111111111 # instrumentation
sbb dil, byte ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
