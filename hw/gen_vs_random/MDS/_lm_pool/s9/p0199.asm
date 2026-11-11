.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or al, 74
and dil, al
and rax, 0b1111111111111 # instrumentation
xor esi, dword ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rdi]
test al, 91
xor al, dl
jmp .bb_0.1
.bb_0.1:
jmp .bb_0.2
.bb_0.2:
and rcx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rcx], 5
and rdi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdi], -180081263
or rax, 52
xor bl, dil
test dl, sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
