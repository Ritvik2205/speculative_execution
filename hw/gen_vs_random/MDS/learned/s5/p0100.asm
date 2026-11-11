.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test bl, sil
or al, cl
and rbx, 0b1111111111111 # instrumentation
cmovnp rax, qword ptr [r14 + rbx]
test bl, -14
and rdx, 0b1111111111111 # instrumentation
btc word ptr [r14 + rdx], 3
and rdi, 0b1111111111111 # instrumentation
xor dl, byte ptr [r14 + rdi]
test dl, -119
and rax, 0b1111111111111 # instrumentation
xor rdx, qword ptr [r14 + rax]
and al, dil
and rsi, 0b1111111111111 # instrumentation
and dil, byte ptr [r14 + rsi]
not sil
not sil
and bl, dil
xor rax, -404206377
xor sil, -126
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
