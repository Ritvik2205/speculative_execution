.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111000 # instrumentation
and dx, 0b111 # instrumentation
lock btc word ptr [r14 + rdi], dx
cmovle cx, di
and bl, dil
or bx, 95
and rcx, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rcx], 5
xor rbx, 89
and rdx, 0b1111111111111 # instrumentation
or rsi, qword ptr [r14 + rdx]
xor cl, 55
and sil, bl
or dl, sil
not al
btr bx, ax
xor al, bl
and al, -114
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
