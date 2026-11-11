.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or rdi, 0b1000000000000000000000000000000 # instrumentation
bsf rcx, rdi
or rcx, rbx
and rdx, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rdx], 29
test dl, dl
or bl, -125
xor cl, al
and dl, 66 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovns edx, dword ptr [r14 + rdi]
test cl, 91
and rdx, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rdx], 4
and rdx, 0b1111111111111 # instrumentation
btc word ptr [r14 + rdx], 3
and rdx, 0b1111111111111 # instrumentation
and rsi, 0b111 # instrumentation
bt qword ptr [r14 + rdx], rsi
and rcx, 0b1111111111111 # instrumentation
btr word ptr [r14 + rcx], 5
and rdi, 0b1111111111111 # instrumentation
cmovnp rbx, qword ptr [r14 + rdi]
jmp .bb_0.1
.bb_0.1:
cmovnp ax, dx
and rdi, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rdi], -41
or cl, 30
and sil, -9
and rsi, 0b1111111111111 # instrumentation
xor word ptr [r14 + rsi], 57
and rsi, 0b1111111111111 # instrumentation
cmovp rax, qword ptr [r14 + rsi]
xor sil, 110
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
