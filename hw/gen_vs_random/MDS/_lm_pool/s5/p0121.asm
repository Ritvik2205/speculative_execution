.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -45 # instrumentation
cmovs rax, rax
xor al, bl
xor dil, -124
jmp .bb_0.1
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
xor word ptr [r14 + rsi], 57
test bl, -114
and rax, 0b1111111111111 # instrumentation
xor rsi, qword ptr [r14 + rax]
jmp .bb_0.2
.bb_0.2:
and rbx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rbx], 1803433227
and dil, dil
and rdi, 0b1111111111000 # instrumentation
and si, 0b111 # instrumentation
lock btc word ptr [r14 + rdi], si
xor rdx, -59
xor rax, -1128378406
and sil, -56
and rdi, 0b1111111111111 # instrumentation
or rsi, qword ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
xor rdx, qword ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
