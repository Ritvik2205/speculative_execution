.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111000 # instrumentation
and si, 0b111 # instrumentation
lock btc word ptr [r14 + rdi], si
and rcx, 0b1111111111111 # instrumentation
or rax, qword ptr [r14 + rcx]
and edi, 23
and rax, 0b1111111111111 # instrumentation
btc word ptr [r14 + rax], 2
and cl, -71
and rbx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rbx], -102
test cl, -113
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], dl
test esi, 1857129931
and dil, sil
and rdi, 0b1111111111111 # instrumentation
or ax, word ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
xor rsi, qword ptr [r14 + rbx]
or al, -24
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
