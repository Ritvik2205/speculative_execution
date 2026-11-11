.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rbx], 5
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], bl
or dil, bl
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], sil
xor sil, cl
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], 751805012
or al, 30
bts rax, 77
test ebx, -961564216
test al, sil
btr cx, si
xor al, -89
xor dl, al
jmp .bb_0.1
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
xor rdx, qword ptr [r14 + rdi]
test sil, dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
