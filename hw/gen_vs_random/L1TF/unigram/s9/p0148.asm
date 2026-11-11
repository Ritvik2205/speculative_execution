.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
mov cx, word ptr [r14 + rbx]
cbw
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], cl
and rdi, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rdi], bl
cmp rdx, rdx
and rcx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rcx], rsi
and rbx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rbx], dl
and rdi, 0b1111111111111 # instrumentation
cmovl rdx, qword ptr [r14 + rdi]
jmp .bb_0.1
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rsi], 0b1000 # instrumentation
and byte ptr [r14 + rsi], 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv dword ptr [r14 + rsi]
and rbx, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rbx], 63
xor dl, dl
and rbx, 0b1111111111111 # instrumentation
adc rcx, qword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rbx], ebx
and rdi, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rdi], ecx
setbe dil
and rdi, 0b1111111111111 # instrumentation
cmovo eax, dword ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
