.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
xor eax, dword ptr [r14 + rax]
and sil, bl
btr si, dx
and al, bl
and sil, sil
not al
jmp .bb_0.1
.bb_0.1:
test dil, -51
xor al, -4
and rdi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdi], sil
and rbx, 0b1111111111111 # instrumentation
xor rax, qword ptr [r14 + rbx]
and al, -114
xor cl, -13
test bl, al
or dil, dl
test dil, -51
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
