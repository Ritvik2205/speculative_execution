.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rax], 6
xor rax, -91
test sil, -96
and cl, dl
xor al, -26
xor dl, 8
test bl, -114
not sil
and cl, al
and rdx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rdx], 5
and rdi, 0b1111111111111 # instrumentation
and sil, byte ptr [r14 + rdi]
and al, 75
not cl
jmp .bb_0.1
.bb_0.1:
test al, -7
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
