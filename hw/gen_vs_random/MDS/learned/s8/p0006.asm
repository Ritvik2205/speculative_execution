.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test al, sil
and rax, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rax], sil
and rax, 0b1111111111111 # instrumentation
test word ptr [r14 + rax], -3918
xor dl, 34
xor al, 115
xor dil, -70
and dil, sil
not sil
test al, -7
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rcx], 5
and dil, -39
and ecx, -104
xor cl, 55
test edi, -1252846009
test dl, 9
or al, dil
or al, dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
