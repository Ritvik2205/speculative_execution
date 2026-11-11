.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111000 # instrumentation
and cx, 0b111 # instrumentation
lock btc word ptr [r14 + rdx], cx
xor al, al
xor al, -89
and dl, dl
jmp .bb_0.1
.bb_0.1:
xor bl, al
and rbx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rbx], 3
and rcx, -63
and sil, dl
xor al, 115
or rdx, -48
btc rax, 59
or cl, -77
xor dl, 34
or sil, sil
and rbx, 0b1111111111111 # instrumentation
or rdx, qword ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
