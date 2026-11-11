.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or bx, si
imul rdx, rbx
bt bx, 27
and rax, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rax], al
lea ax, qword ptr [rbx + rcx + 13]
mov dil, dil
and rdi, 0b1111111111111 # instrumentation
add word ptr [r14 + rdi], cx
sub sil, -55
jnle .bb_0.1
jmp .exit_0
.bb_0.1:
cmp bl, bl
and rdx, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rdx], 96
dec rdx
lea dx, qword ptr [rsi + rax]
and rbx, 0b1111111111111 # instrumentation
sub bl, byte ptr [r14 + rbx]
mul dil
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], cl
and rdx, 0b1111111111111 # instrumentation
setnle byte ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
