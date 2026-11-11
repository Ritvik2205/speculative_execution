.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111000 # instrumentation
and dx, 0b111 # instrumentation
lock btc word ptr [r14 + rcx], dx
or sil, cl
and rbx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rbx], -4
and rdi, 81
test dil, -80
and al, al
or bl, dl
xor ax, -16696
and rax, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rax], 0
and dl, -73
and di, 91
xor rdi, -9
xor dil, -70
and rsi, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rsi]
test dil, -51
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
