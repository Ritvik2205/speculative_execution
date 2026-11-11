.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sbb dl, -23
sub sil, -55
bt rsi, 56
sub rdi, 18
add si, 62
cmp cl, 3
and rsi, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rsi], 45
and rdi, 0b1111111111111 # instrumentation
and dl, byte ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
mov cx, word ptr [r14 + rax]
jnp .bb_0.1
jmp .exit_0
.bb_0.1:
or dx, bx
and rcx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rcx], edi
and rdi, 0b1111111111111 # instrumentation
inc dword ptr [r14 + rdi]
and rcx, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rcx], -40
and rdi, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rdi], 75
and rsi, 0b1111111111111 # instrumentation
sbb dword ptr [r14 + rsi], edi
and rbx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rbx], 1 # instrumentation
mov ax, 1 # instrumentation
div byte ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
