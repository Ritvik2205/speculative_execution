.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rcx], -31
add bl, -89 # instrumentation
sbb ebx, edx
and rcx, 0b1111111111111 # instrumentation
imul byte ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
add byte ptr [r14 + rax], cl
test rcx, -1420345926
test al, 42
cmovno ax, di
and rcx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rcx], 1 # instrumentation
mov ax, 1 # instrumentation
div byte ptr [r14 + rcx]
btr edx, 166
and rdi, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rdi], -100
jbe .bb_0.1
jmp .exit_0
.bb_0.1:
adc eax, 56
cmovns rbx, rax
imul al
and rbx, 0b1111111111111 # instrumentation
or bl, byte ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
cmovo edx, dword ptr [r14 + rdi]
bt di, 157
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
