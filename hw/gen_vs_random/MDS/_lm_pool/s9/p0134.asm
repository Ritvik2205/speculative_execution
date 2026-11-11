.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor dl, 8
and ax, 339
and rbx, 0b1111111111111 # instrumentation
and rsi, 0b111 # instrumentation
bt qword ptr [r14 + rbx], rsi
xor dil, -70
xor dl, 8
or al, sil
test sil, -96
and rax, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rax], 7
and rsi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rsi], al
and rax, 0b1111111111111 # instrumentation
and rsi, 0b111 # instrumentation
bt qword ptr [r14 + rax], rsi
and rcx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rcx], bl
test dil, -51
or al, -58
and rax, 0b1111111111111 # instrumentation
btc word ptr [r14 + rax], 2
xor cl, 24
and rdi, 0b1111111111111 # instrumentation
or rsi, qword ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
