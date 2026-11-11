.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], esi
and rdx, 0b1111111111111 # instrumentation
and rax, 0b111 # instrumentation
bt qword ptr [r14 + rdx], rax
or cl, 119
and rdi, 0b1111111111111 # instrumentation
cmovnp rax, qword ptr [r14 + rdi]
xor eax, 571592471
xor dl, bl
and sil, -56
and rax, 0b1111111111000 # instrumentation
and si, 0b111 # instrumentation
lock btc word ptr [r14 + rax], si
jmp .bb_0.1
.bb_0.1:
or rcx, 54
test sil, dil
test edi, -1252846009
xor sil, 94
btc di, 164
and rcx, 0b1111111111000 # instrumentation
and dx, 0b111 # instrumentation
lock btr word ptr [r14 + rcx], dx
test dl, -85
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
