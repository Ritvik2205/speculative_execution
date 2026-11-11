.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
sub ecx, dword ptr [r14 + rdi]
add cl, -26 # instrumentation
cmovnp cx, dx
lea rdx, qword ptr [rbx + rsi + 80]
and rdi, 0b1111111111111 # instrumentation
imul byte ptr [r14 + rdi]
setnz al
add bl, 52
and rdi, 0b1111111111111 # instrumentation
add esi, dword ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
cmovno eax, dword ptr [r14 + rsi]
jnp .bb_0.1
jmp .exit_0
.bb_0.1:
cmovs cx, bx
mul dil
and rdi, 0b1111111111000 # instrumentation
lock bts qword ptr [r14 + rdi], 32
add al, -121 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovnp eax, dword ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
sbb word ptr [r14 + rcx], ax
xor si, cx
and rcx, 0b1111111111111 # instrumentation
mov rax, qword ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
