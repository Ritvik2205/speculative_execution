.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor rax, -2035087432
add dl, -66 # instrumentation
and rcx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rcx], di
bt dx, 38
btr dx, ax
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], 1 # instrumentation
and dx, word ptr [r14 + rsi] # instrumentation
shr dx, 1 # instrumentation
div word ptr [r14 + rsi]
jnbe .bb_0.1
jmp .exit_0
.bb_0.1:
add al, 87 # instrumentation
and rax, 0b1111111111111 # instrumentation
sbb rsi, qword ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
and dl, byte ptr [r14 + rdi]
and rsi, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rsi], 13
and rsi, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rsi], rdi
mov rax, rcx
xor rcx, 2
sub eax, -518999763
or dil, -55
lea rax, qword ptr [rdi]
xchg ecx, ebx
and rsi, 0b1111111111111 # instrumentation
setl byte ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
