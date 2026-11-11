.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test bl, sil
or al, sil
xor rdx, -59
test esi, 425331143
and dil, sil
test rdi, 4
test al, 22
and sil, 89
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], sil
jmp .bb_0.1
.bb_0.1:
test al, 22
test bl, cl
jmp .bb_0.2
.bb_0.2:
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], dil
and rax, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rax], 7
xor dl, -19
or al, -58
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
