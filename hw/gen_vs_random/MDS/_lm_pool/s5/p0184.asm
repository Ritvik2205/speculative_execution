.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rbx], 1
and sil, sil
and al, dl
and dl, -73
test dil, dl
and eax, 454700988
jmp .bb_0.1
.bb_0.1:
jmp .bb_0.2
.bb_0.2:
and rax, 0b1111111111000 # instrumentation
and cx, 0b111 # instrumentation
lock btc word ptr [r14 + rax], cx
xor al, 9
and rax, 0b1111111111111 # instrumentation
or rdx, qword ptr [r14 + rax]
or rsi, 18
and rcx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rcx], sil
or bl, al
xor al, 115
test sil, -55
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
