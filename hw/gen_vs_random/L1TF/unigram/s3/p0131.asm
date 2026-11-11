.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, 93 # instrumentation
and rdi, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rdi], -15
xor edi, eax
or dx, ax
xor cl, dil
setp al
not dil
and rdi, 0b1111111111111 # instrumentation
mov word ptr [r14 + rdi], ax
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rcx], bl
and rsi, 0b1111111111111 # instrumentation
setnb byte ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
sub ax, word ptr [r14 + rcx]
imul rsi, rdx
and rdx, 0b1111111111111 # instrumentation
cmovbe rsi, qword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
xor eax, dword ptr [r14 + rax]
imul al
xor rdi, -80
and rsi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rsi], 0b1000000000000000000000000000000 # instrumentation
bsr ecx, dword ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
