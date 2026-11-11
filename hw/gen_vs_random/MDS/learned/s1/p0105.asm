.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test bl, -14
test sil, dl
or bl, 43
or cl, 7
jmp .bb_0.1
.bb_0.1:
and al, sil
and rcx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rcx], ebx
and rdx, 0b1111111111000 # instrumentation
and ax, 0b111 # instrumentation
lock btc word ptr [r14 + rdx], ax
test rcx, -613256812
and rax, 0b1111111111111 # instrumentation
or bx, word ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
cmovno rdx, qword ptr [r14 + rax]
and di, 99
and rcx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rcx], 6
and dl, -73
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
