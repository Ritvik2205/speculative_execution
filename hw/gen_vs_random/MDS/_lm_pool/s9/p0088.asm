.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and di, 91
and rdx, 0b1111111111111 # instrumentation
bt word ptr [r14 + rdx], 2
xor sil, dil
or bl, bl
xor cl, 83
and ax, -16061
or dl, -89
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdx], 66
and rcx, 0b1111111111111 # instrumentation
cmovz rax, qword ptr [r14 + rcx]
or al, dil
and rax, 0b1111111111111 # instrumentation
and dil, byte ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], 718371415
and rdx, 0b1111111111111 # instrumentation
xor esi, dword ptr [r14 + rdx]
and dl, -73
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
