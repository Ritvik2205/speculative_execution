.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111000 # instrumentation
and dx, 0b111 # instrumentation
lock btc word ptr [r14 + rax], dx
and ax, -10351
xor rdi, -9
bts rsi, rbx
or al, -61
and rdi, 0b1111111111111 # instrumentation
cmovnp rsi, qword ptr [r14 + rdi]
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
cmovs di, word ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
and sil, byte ptr [r14 + rbx]
or al, bl
test al, 91
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], al
or sil, bl
and rax, 0b1111111111111 # instrumentation
test qword ptr [r14 + rax], 1238525395
jmp .bb_0.2
.bb_0.2:
test sil, -55
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
