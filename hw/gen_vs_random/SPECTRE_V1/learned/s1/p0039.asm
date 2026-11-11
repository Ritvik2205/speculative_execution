.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
add rdx, qword ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
sbb bx, word ptr [r14 + rcx]
cmp dx, cx
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], 0b1000 # instrumentation
and byte ptr [r14 + rax], 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv dword ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rcx]
cbw
cmovno esi, edx
lea ax, qword ptr [rsi]
and rcx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rcx], al
and dl, -26 # instrumentation
cmovnp rsi, rdx
jnp .bb_0.1
jmp .exit_0
.bb_0.1:
add bl, -41 # instrumentation
xchg bl, cl
and rdi, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rdi], al
or dl, 1 # instrumentation
add al, -47 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovs rsi, qword ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
or rdi, qword ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
imul byte ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
add rcx, qword ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
