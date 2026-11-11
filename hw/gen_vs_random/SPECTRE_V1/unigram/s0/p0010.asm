.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rdi]
setnp sil
and rcx, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rcx], rsi
and rdi, 0b1111111111111 # instrumentation
imul byte ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rsi], 2114064901
jnbe .bb_0.1
jmp .exit_0
.bb_0.1:
and sil, 14
bts eax, ecx
xchg bx, ax
btc cx, 95
and rdi, 0b1111111111111 # instrumentation
add byte ptr [r14 + rdi], dil
xchg si, cx
lea rsi, qword ptr [rdx]
and rbx, 0b1111111111111 # instrumentation
sub di, word ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
or byte ptr [r14 + rax], 29
cmp al, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
