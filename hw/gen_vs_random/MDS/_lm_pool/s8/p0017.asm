.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor di, -83
and eax, 366961170
and rbx, 0b1111111111111 # instrumentation
or ax, word ptr [r14 + rbx]
test dil, -80
xor dil, -70
xor sil, -126
and rbx, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rbx], 7
and rbx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rbx], 1803433227
btr bx, cx
and sil, 89
and rdi, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rdi], 4
and rsi, 0b1111111111111 # instrumentation
xor rdx, qword ptr [r14 + rsi]
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
xor word ptr [r14 + rax], 37
xor ax, -6793
or al, cl
bts ax, 22
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
