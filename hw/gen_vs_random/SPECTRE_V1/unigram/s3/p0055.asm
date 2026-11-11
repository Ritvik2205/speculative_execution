.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
btc word ptr [r14 + rdx], 0
and rbx, 0b1111111111111 # instrumentation
cmovnp edi, dword ptr [r14 + rbx]
mov cl, -72
and rdi, 0b1111111111111 # instrumentation
and cx, 0b111 # instrumentation
bts word ptr [r14 + rdi], cx
and rdx, 0b1111111111111 # instrumentation
and word ptr [r14 + rdx], cx
and rsi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rsi], dl
xor dl, dl
jnp .bb_0.1
jmp .exit_0
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
movzx rbx, word ptr [r14 + rdx]
sbb al, dl
and rdx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdx], 72
and rcx, 0b1111111111111 # instrumentation
movsx rax, byte ptr [r14 + rcx]
and rsi, 0b1111111111000 # instrumentation
xchg word ptr [r14 + rsi], si
movzx dx, dil
and rdx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rdx], 13
lea bx, qword ptr [rdx + rsi + 56]
and rcx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rcx], bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
