.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, 40 # instrumentation
cmovbe ax, dx
bts ebx, 77
test eax, 645518295
and rcx, 0b1111111111111 # instrumentation
mov edi, dword ptr [r14 + rcx]
jmp .bb_0.1
.bb_0.1:
and sil, dil
sbb sil, sil
add al, dil
and rdx, 0b1111111111111 # instrumentation
add rax, qword ptr [r14 + rdx]
xor sil, dil
or dl, dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
