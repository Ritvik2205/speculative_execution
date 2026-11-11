.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and dil, -103 # instrumentation
cmovbe di, di
and rax, 0b1111111111000 # instrumentation
and di, 0b111 # instrumentation
lock btc word ptr [r14 + rax], di
and rcx, 0b1111111111111 # instrumentation
xor ebx, dword ptr [r14 + rcx]
test bl, sil
and al, bl
and rax, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rax]
btr si, ax
and sil, -69
xor rax, -773894210
and rdx, 0b1111111111111 # instrumentation
and rsi, 0b111 # instrumentation
bt qword ptr [r14 + rdx], rsi
xor si, 80
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
