.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
setnl byte ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
or word ptr [r14 + rcx], 0b1000000000000000 # instrumentation
bsr si, word ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
cmovs rdx, qword ptr [r14 + rcx]
cmp rbx, 45
and rbx, 0b1111111111111 # instrumentation
inc qword ptr [r14 + rbx]
add bl, -5 # instrumentation
and rsi, 0b1111111111111 # instrumentation
setns byte ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
bt word ptr [r14 + rax], 29
and rbx, 0b1111111111111 # instrumentation
sub edx, dword ptr [r14 + rbx]
xor dl, bl
js .bb_0.1
jmp .exit_0
.bb_0.1:
or dil, dil
and bx, dx
and rax, 0b1111111111111 # instrumentation
or word ptr [r14 + rax], -89
adc bl, cl
lea rbx, qword ptr [rdi + rax]
or al, al
add bl, 97 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovs rdi, qword ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
