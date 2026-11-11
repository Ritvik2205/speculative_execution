.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111000 # instrumentation
and si, 0b111 # instrumentation
lock btc word ptr [r14 + rax], si
or sil, dl
bts ebx, 205
and rdx, 0b1111111111111 # instrumentation
and bl, byte ptr [r14 + rdx]
and al, -8
and dl, -73
or dl, sil
or rcx, -17
or al, -75
or bl, -125
test bl, 65
and rbx, 0b1111111111111 # instrumentation
and cl, byte ptr [r14 + rbx]
and sil, 74
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
