.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or sil, bl
xor si, 91
and rsi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rsi], -120554987
and rbx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rbx], 0
xor ax, 31969
or al, 37
test sil, -55
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], 718371415
test esi, 1857129931
bts edi, 248
and dl, cl
test bl, cl
xor sil, cl
and dil, -39
and ecx, -104
or dil, -41
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
