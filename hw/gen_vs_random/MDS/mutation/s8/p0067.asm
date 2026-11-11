.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and dl, 66 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovns edx, dword ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
cmovnp rbx, qword ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
and rsi, 0b111 # instrumentation
bt qword ptr [r14 + rdx], rsi
and rcx, 0b1111111111111 # instrumentation
btr word ptr [r14 + rcx], 5
or bl, -125
xor cl, al
or rcx, rbx
test dl, dl
test cl, -18
and rdx, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rdx], 2
or rdi, 0b1000000000000000000000000000000 # instrumentation
bsf rcx, rdi
and rdx, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rdx], 29
and rdx, 0b1111111111111 # instrumentation
btc word ptr [r14 + rdx], 3
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rbx], 0
test rax, 337705873
and rbx, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rbx], 3
or cx, 49
and ecx, edx
and rax, 0b1111111111111 # instrumentation
and bl, byte ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
