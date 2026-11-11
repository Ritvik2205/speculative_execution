.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
btr ax, dx
or al, -61
and rax, 0b1111111111000 # instrumentation
and dx, 0b111 # instrumentation
lock btc word ptr [r14 + rax], dx
or cl, -77
test al, 66
xor al, sil
bt di, bx
and rdx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdx], -9
xor sil, 94
and rax, 0b1111111111111 # instrumentation
and dword ptr [r14 + rax], edi
btc ecx, 20
jmp .bb_0.1
.bb_0.1:
and di, 91
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], dl
and rcx, -63
test di, 20
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
