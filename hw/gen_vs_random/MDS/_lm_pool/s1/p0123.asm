.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
xor rdx, qword ptr [r14 + rcx]
xor al, 34
xor sil, dil
and rsi, 35
and sil, dil
or cl, bl
or sil, -78
and rcx, 0b1111111111111 # instrumentation
xor dl, byte ptr [r14 + rcx]
test dl, bl
and rax, 0b1111111111000 # instrumentation
and di, 0b111 # instrumentation
lock btc word ptr [r14 + rax], di
and rsi, 57
and dil, 125
xor rdi, -9
or al, sil
cmovnp rcx, rax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
