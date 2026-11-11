.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
mov cl, byte ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
imul eax, dword ptr [r14 + rbx]
add al, -13
and rbx, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rbx], -56
and rdi, 0b1111111111111 # instrumentation
cmovle bx, word ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
cmp rbx, qword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
adc dil, byte ptr [r14 + rax]
and dl, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
