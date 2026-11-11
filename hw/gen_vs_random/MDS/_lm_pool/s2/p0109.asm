.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
xor rsi, qword ptr [r14 + rdx]
or al, cl
and rax, 0b1111111111000 # instrumentation
and cx, 0b111 # instrumentation
lock btc word ptr [r14 + rax], cx
and sil, -56
or eax, -927349615
xor dl, sil
test eax, 298249463
test dil, al
test al, dil
test dl, cl
or rcx, 54
xor cl, sil
btc si, di
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
