.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
not dil
and rcx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rcx], eax
and rax, 0b1111111111111 # instrumentation
add byte ptr [r14 + rax], al
and rbx, 0b1111111111000 # instrumentation
lock adc dword ptr [r14 + rbx], 107
and rdx, 0b1111111111000 # instrumentation
lock inc qword ptr [r14 + rdx]
and rcx, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rcx], dx
mov cl, dil
setns al
jns .bb_0.1
jmp .exit_0
.bb_0.1:
and rax, 0b1111111111000 # instrumentation
xchg dword ptr [r14 + rax], ecx
and rcx, 0b1111111111111 # instrumentation
mov esi, dword ptr [r14 + rcx]
bt rbx, 224
and rax, 0b1111111111000 # instrumentation
lock neg word ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
sbb cx, word ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
imul cx, word ptr [r14 + rbx]
and rax, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rax], rcx
adc eax, 1725322202
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
