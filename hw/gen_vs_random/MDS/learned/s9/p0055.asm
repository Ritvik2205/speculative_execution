.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and si, -121
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], dl
test bl, dil
bts rbx, rdx
and cl, dl
xor dil, sil
test al, bl
test dil, -51
and rax, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rax], 7
test al, -81
xor dil, -3
test rdi, 8
or al, dil
and rdx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdx], 47
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
