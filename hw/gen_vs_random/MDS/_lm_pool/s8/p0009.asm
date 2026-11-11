.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and si, -121
or al, sil
test eax, 1287331633
and bl, 68
xor cl, al
and rdx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdx], cl
xor sil, 27
xor rsi, -117
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], 751805012
or dil, -78
bt ecx, esi
and rax, 0b1111111111111 # instrumentation
and edi, 0b111 # instrumentation
bts dword ptr [r14 + rax], edi
or dil, dl
and rdi, 0b1111111111111 # instrumentation
or rdx, qword ptr [r14 + rdi]
and rax, 452940266
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
