.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
btc word ptr [r14 + rbx], 2
test sil, 41
and rcx, 0b1111111111111 # instrumentation
xor rsi, qword ptr [r14 + rcx]
and rcx, -63
or bl, bl
xor di, 93
and bl, 68
or dl, -97
jmp .bb_0.1
.bb_0.1:
or cl, sil
and rbx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rbx]
or dl, bl
jmp .bb_0.2
.bb_0.2:
and rax, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rax], 7
and rdx, 20
and rax, 0b1111111111111 # instrumentation
cmovp rbx, qword ptr [r14 + rax]
xor cl, 55
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
