.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111000 # instrumentation
and dx, 0b111 # instrumentation
lock btc word ptr [r14 + rax], dx
and dil, 125
or dil, sil
and rbx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rbx], cl
and rax, 0b1111111111111 # instrumentation
xor rbx, qword ptr [r14 + rax]
xor di, -83
or sil, -78
and bl, dl
or rax, 1461812833
bt cx, si
xor rbx, 89
bts si, 158
and al, 87
or al, sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
