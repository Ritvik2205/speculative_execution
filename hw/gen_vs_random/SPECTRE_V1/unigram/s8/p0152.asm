.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
imul eax
sub al, -66
lea edx, qword ptr [rax + rax + 5]
lea dx, qword ptr [rax + rdx + 76]
btc ax, 87
and rbx, 0b1111111111000 # instrumentation
lock not byte ptr [r14 + rbx]
jnbe .bb_0.1
jmp .exit_0
.bb_0.1:
and rax, rdx
add cl, 73 # instrumentation
add cl, -10 # instrumentation
lea ecx, qword ptr [rdi]
cmp bl, cl
and rax, 0b1111111111111 # instrumentation
sub dil, byte ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
bts qword ptr [r14 + rcx], 61
cmp ebx, -33
and rcx, -29
sbb dil, cl
and rdx, 0b1111111111111 # instrumentation
or word ptr [r14 + rdx], 0b1000 # instrumentation
and byte ptr [r14 + rdx], 0b11111000 # instrumentation
and rdi, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rdi], al
and rsi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rsi], 0b1000 # instrumentation
and byte ptr [r14 + rsi], 0b11111000 # instrumentation
mov ax, 1 # instrumentation
idiv byte ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
