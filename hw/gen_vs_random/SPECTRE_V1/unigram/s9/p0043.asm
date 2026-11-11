.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, -34 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovs rax, qword ptr [r14 + rax]
lea rbx, qword ptr [rsi]
test sil, 13
and rsi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rsi], 0b1000000000000000000000000000000 # instrumentation
bsr rcx, qword ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rbx], 0b1000000000000000000000000000000 # instrumentation
bsf rcx, qword ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
and dword ptr [r14 + rdi], -69
lea rax, qword ptr [rdi]
sets dil
jb .bb_0.1
jmp .exit_0
.bb_0.1:
xor dl, cl
and rdi, 0b1111111111000 # instrumentation
lock adc dword ptr [r14 + rdi], 45
and rdi, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rdi], rbx
imul al
imul bx, ax, 72
and rcx, 0b1111111111111 # instrumentation
add cl, byte ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
mov word ptr [r14 + rax], dx
and rbx, 0b1111111111111 # instrumentation
and word ptr [r14 + rbx], ax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
