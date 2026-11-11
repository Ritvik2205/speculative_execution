.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and ax, -21522
and rax, 0b1111111111111 # instrumentation
adc word ptr [r14 + rax], 5
cmovnbe si, si
and rsi, 0b1111111111111 # instrumentation
cmovo si, word ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
add word ptr [r14 + rdx], cx
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], 0b1000 # instrumentation
and byte ptr [r14 + rbx], 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv word ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
sub cl, byte ptr [r14 + rsi]
cmovno edi, esi
jnp .bb_0.1
jmp .exit_0
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
xor rdi, qword ptr [r14 + rdx]
or ax, 0b1000000000000000 # instrumentation
bsr di, ax
and rax, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rax], -4
dec bl
and rdi, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rdi], 16
and rbx, 0b1111111111111 # instrumentation
cmovbe edi, dword ptr [r14 + rbx]
and rbx, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rbx], 19
and rdi, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rdi], 12
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
