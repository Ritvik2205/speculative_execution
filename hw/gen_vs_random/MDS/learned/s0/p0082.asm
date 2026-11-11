.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rax], 0
and rdx, 0b1111111111111 # instrumentation
or sil, byte ptr [r14 + rdx]
and eax, -829294476
jmp .bb_0.1
.bb_0.1:
test rdx, 20
and rbx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rbx], dil
and rdi, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rdi], 8
and al, al
or dx, 125
or dl, cl
or rax, -689609688
or bl, -52
or cl, bl
and cl, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
