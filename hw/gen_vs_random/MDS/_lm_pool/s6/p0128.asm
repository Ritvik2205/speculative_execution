.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test dil, -51
and rcx, 0b1111111111111 # instrumentation
or rdi, qword ptr [r14 + rcx]
xor cl, 15
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], dil
xor dl, 34
or al, sil
xor rdi, -9
bts rdx, rcx
and rcx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rcx], dl
xor sil, -46
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
