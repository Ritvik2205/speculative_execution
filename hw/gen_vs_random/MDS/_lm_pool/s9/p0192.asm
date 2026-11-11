.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or sil, -78
xor ax, -5889
and rax, 0b1111111111111 # instrumentation
btc word ptr [r14 + rax], 2
or al, al
jmp .bb_0.1
.bb_0.1:
cmovnp rax, rsi
btr di, si
or dl, -97
or al, 16
and rcx, 0b1111111111111 # instrumentation
cmovl edi, dword ptr [r14 + rcx]
bts rax, 77
or al, -61
xor al, -26
or bl, sil
btr bx, dx
or al, bl
or al, cl
test sil, sil
and rcx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rcx], rdx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
