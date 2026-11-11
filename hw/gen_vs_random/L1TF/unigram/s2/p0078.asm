.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rax]
and rax, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rax], dx
sub si, -105
sub sil, dil
and rdx, 0b1111111111111 # instrumentation
or edi, dword ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
cmovnbe rax, qword ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
xor ebx, dword ptr [r14 + rsi]
cmovb bx, dx
jmp .bb_0.1
.bb_0.1:
test cl, 49
cmp dil, dil
lea esi, qword ptr [rsi + rax]
lea bx, qword ptr [rcx]
and rax, 0b1111111111111 # instrumentation
cmovbe rdx, qword ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
cmovnp rsi, qword ptr [r14 + rdi]
sub dl, 105
and rax, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
