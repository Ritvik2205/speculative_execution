.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea rcx, qword ptr [rax + rdi + 64855]
and rcx, 0b1111111111111 # instrumentation
sub bx, word ptr [r14 + rcx]
imul bl
add dl, -42 # instrumentation
lea edi, qword ptr [rdx]
xchg rsi, rcx
setnl dl
adc dl, bl
and rsi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rsi], cl
adc al, 8
xchg cx, di
and rax, 0b1111111111111 # instrumentation
and ecx, 0b111 # instrumentation
bt dword ptr [r14 + rax], ecx
add dl, -124 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovle ebx, dword ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
sbb dl, byte ptr [r14 + rbx]
xchg ecx, esi
cwde
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
