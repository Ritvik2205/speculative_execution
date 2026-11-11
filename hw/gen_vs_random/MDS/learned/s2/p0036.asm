.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or si, 0b1000000000000000 # instrumentation
bsr si, si
and rsi, 0b1111111111111 # instrumentation
and edi, 0b111 # instrumentation
bts dword ptr [r14 + rsi], edi
xor ax, 23633
and sil, -9
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], sil
and rdi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdi], rdx
or ax, 85
sbb sil, 22
xor cl, dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
