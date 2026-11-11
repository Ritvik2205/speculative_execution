.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
btc word ptr [r14 + rdi], 4
test al, 66
test bl, dil
not sil
and cl, cl
or al, -75
and dil, -39
xor sil, cl
and rax, 0b1111111111111 # instrumentation
cmovp ecx, dword ptr [r14 + rax]
and cl, cl
and rcx, 0b1111111111111 # instrumentation
xor edi, dword ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
test word ptr [r14 + rcx], 2908
and dl, -73
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], 194454182
test al, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
