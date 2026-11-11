.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
and rsi, 0b111 # instrumentation
bt qword ptr [r14 + rdx], rsi
xor cl, al
and rdx, 0b1111111111111 # instrumentation
btc word ptr [r14 + rdx], 3
and rdi, 0b1111111111111 # instrumentation
cmovnp rbx, qword ptr [r14 + rdi]
or rcx, rbx
and rcx, 0b1111111111111 # instrumentation
btr word ptr [r14 + rcx], 5
test dl, dl
or rdi, 0b1000000000000000000000000000000 # instrumentation
bsf rcx, rdi
and rdx, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rdx], 4
and dl, 66 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovns edx, dword ptr [r14 + rdi]
or bl, 127
test cl, 0
and rdx, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rdx], 29
jmp .bb_0.1
.bb_0.1:
or cl, -77
cmovnp ax, dx
and rsi, 0b1111111111111 # instrumentation
cmovp rax, qword ptr [r14 + rsi]
and rdi, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rdi], 85
and rsi, 0b1111111111111 # instrumentation
xor word ptr [r14 + rsi], 57
xor sil, -15
and sil, 74
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
