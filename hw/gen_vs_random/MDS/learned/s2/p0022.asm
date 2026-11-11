.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rax], 0
or bl, dil
test al, cl
or al, 16
test dil, -51
or eax, -927349615
or dl, bl
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
cmovns rdx, qword ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdx], -2966447
and rsi, 0b1111111111111 # instrumentation
xor bl, byte ptr [r14 + rsi]
xor rdx, -59
or cl, sil
jmp .bb_0.2
.bb_0.2:
xor bl, sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
