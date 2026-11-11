.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor si, 80
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], dil
test al, cl
xor al, 9
jmp .bb_0.1
.bb_0.1:
or al, bl
and al, 14
xor sil, -15
and rdi, 0b1111111111111 # instrumentation
or si, word ptr [r14 + rdi]
and dil, dil
and rdx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rdx], 4
test dl, -95
jmp .bb_0.2
.bb_0.2:
test bl, -14
bt ax, cx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
