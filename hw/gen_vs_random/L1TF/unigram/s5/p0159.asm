.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111000 # instrumentation
and si, 0b111 # instrumentation
lock btc word ptr [r14 + rax], si
and rdi, 0b1111111111111 # instrumentation
cmovb si, word ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
cmp rax, qword ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
and word ptr [r14 + rdx], ax
and rdi, 0b1111111111111 # instrumentation
and rax, qword ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
and dl, byte ptr [r14 + rdx]
test edx, edx
add cl, -20
sbb rsi, rbx
lea cx, qword ptr [rax + rax]
sbb dl, cl
lea ebx, qword ptr [rsi + rax + 6]
add bl, -54 # instrumentation
setz bl
and rdi, 0b1111111111111 # instrumentation
cmovnp ax, word ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rdx], rcx
and rax, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
