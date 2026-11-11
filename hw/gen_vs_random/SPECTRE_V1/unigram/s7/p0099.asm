.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
not eax
lea rdi, qword ptr [rcx]
cmovle dx, di
and rcx, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rcx], dil
and rcx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rcx], 48
and rbx, 0b1111111111111 # instrumentation
cmovno edi, dword ptr [r14 + rbx]
jp .bb_0.1
jmp .exit_0
.bb_0.1:
mov sil, 24
not ebx
imul dx, bx, 61
and rcx, 0b1111111111111 # instrumentation
mul word ptr [r14 + rcx]
test cl, -120
sub dl, al
imul rdx
and rax, 0b1111111111111 # instrumentation
setnl byte ptr [r14 + rax]
adc bx, dx
and rsi, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rsi], 102
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
