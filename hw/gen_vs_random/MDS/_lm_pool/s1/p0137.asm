.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and di, bx
and rax, 0b1111111111111 # instrumentation
btc word ptr [r14 + rax], 2
jmp .bb_0.1
.bb_0.1:
or cl, bl
and rdi, 34
xor dl, -43
or sil, cl
jmp .bb_0.2
.bb_0.2:
and rcx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rcx], 18
and dl, bl
and dil, dl
btr dx, cx
test eax, 298249463
test dil, sil
or bl, -125
or rdi, 21
and esi, 63
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
