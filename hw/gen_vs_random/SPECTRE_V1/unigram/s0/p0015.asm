.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
movzx di, bl
lea rsi, qword ptr [rdi + rdx]
inc cl
and rax, 0b1111111111111 # instrumentation
and bx, 0b111 # instrumentation
btc word ptr [r14 + rax], bx
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], 0b1000 # instrumentation
and byte ptr [r14 + rbx], 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv word ptr [r14 + rbx]
movzx dx, cl
and rbx, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rbx], rax
and rsi, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rsi], bx
jnp .bb_0.1
jmp .exit_0
.bb_0.1:
cmovl rdi, rdi
and rbx, 0b1111111111111 # instrumentation
and rsi, 0b111 # instrumentation
btc qword ptr [r14 + rbx], rsi
and rdi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdi], -751147448
and rax, 0b1111111111111 # instrumentation
add byte ptr [r14 + rax], cl
sub edi, 92
dec al
and rdx, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rdx]
and rsi, 0b1111111111000 # instrumentation
and rcx, 0b111 # instrumentation
lock bts qword ptr [r14 + rsi], rcx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
