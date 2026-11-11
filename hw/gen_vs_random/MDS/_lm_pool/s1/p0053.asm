.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rbx], 1
and di, 99
and bl, 68
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], 718371415
and rbx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rbx], dl
and rdx, 88
and rax, 0b1111111111111 # instrumentation
xor cl, byte ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rcx], 5
or sil, sil
test al, 66
not cl
test bl, -9
or rax, -141551502
test sil, cl
and rax, 0b1111111111111 # instrumentation
cmovp dx, word ptr [r14 + rax]
test ecx, -1843375753
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
