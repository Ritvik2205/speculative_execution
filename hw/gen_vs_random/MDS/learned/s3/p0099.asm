.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test bl, -9
and di, 91
test dil, 46
test sil, al
xor al, dil
btr si, cx
and rdi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdi], -180081263
or al, bl
test bl, al
and dl, bl
xor sil, dil
and rax, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rax], 7
and rcx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rcx], 1782121130
and eax, 33
and rbx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rbx], -72
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
