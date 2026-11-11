.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
btc word ptr [r14 + rax], 2
and rsi, 0b1111111111111 # instrumentation
cmovnp rax, qword ptr [r14 + rsi]
not al
or si, 94
and rax, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rax], 78
and rdi, 0b1111111111111 # instrumentation
cmovnp rdx, qword ptr [r14 + rdi]
and sil, sil
bt di, ax
not cl
and sil, -69
and rbx, 0b1111111111111 # instrumentation
and dil, byte ptr [r14 + rbx]
or al, 30
and rdi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdi], bl
and bl, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
