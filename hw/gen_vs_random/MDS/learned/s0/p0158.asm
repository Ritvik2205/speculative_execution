.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and dx, 3
and rdi, 0b1111111111111 # instrumentation
cmovnz rdi, qword ptr [r14 + rdi]
or bl, 100
and rax, 0b1111111111111 # instrumentation
btc word ptr [r14 + rax], 2
test dl, sil
and dil, al
xor bl, -102
jmp .bb_0.1
.bb_0.1:
or sil, cl
jmp .bb_0.2
.bb_0.2:
test sil, 41
or al, cl
and dx, 3
and rdx, 0b1111111111111 # instrumentation
and rcx, 0b111 # instrumentation
bt qword ptr [r14 + rdx], rcx
test bx, 25542
and rdi, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rdi], 4
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
