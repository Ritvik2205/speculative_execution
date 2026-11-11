.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
and rcx, qword ptr [r14 + rcx]
or rax, -1523798580
cmovp dx, si
jmp .bb_0.1
.bb_0.1:
or ax, 127
xor cl, 55
test bl, -114
and rdi, 0b1111111111111 # instrumentation
btc word ptr [r14 + rdi], 4
xor cl, al
or sil, dl
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], bl
test dl, cl
bts rsi, rdx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
