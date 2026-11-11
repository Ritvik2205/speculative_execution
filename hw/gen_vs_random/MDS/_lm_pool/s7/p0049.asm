.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111000 # instrumentation
and dx, 0b111 # instrumentation
lock btc word ptr [r14 + rax], dx
and dil, 125
and rdx, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rdx]
test al, 22
test al, 22
or cl, 119
or cl, dl
test bl, sil
and rdi, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rdi], edx
or al, -78
or bl, sil
test dx, bx
jmp .bb_0.1
.bb_0.1:
test dil, bl
and rbx, 0b1111111111111 # instrumentation
cmovbe ax, word ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
