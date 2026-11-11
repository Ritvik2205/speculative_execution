.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or al, -61
and dl, -73
test sil, dl
and al, dil
test sil, cl
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rax], 7
or bl, dil
or cl, al
and dil, 125
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], sil
jmp .bb_0.2
.bb_0.2:
jmp .bb_0.3
.bb_0.3:
and ax, 19224
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
