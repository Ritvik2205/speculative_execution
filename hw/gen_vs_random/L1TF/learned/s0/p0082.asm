.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
xor edx, dword ptr [r14 + rbx]
and dl, cl
xchg ecx, eax
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], bl
lea ebx, qword ptr [rcx + rbx]
jmp .bb_0.1
.bb_0.1:
mov rsi, 39
and rdi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdi], 42
and rsi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rsi], 43
and rcx, 0b1111111111111 # instrumentation
adc dil, byte ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
dec word ptr [r14 + rsi]
cmovp ax, cx
and rdi, 0b1111111111111 # instrumentation
sbb ax, word ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
and bx, 0b111 # instrumentation
btr word ptr [r14 + rsi], bx
xor cl, dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
