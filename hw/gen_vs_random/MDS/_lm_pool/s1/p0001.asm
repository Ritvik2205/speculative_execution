.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and al, -103 # instrumentation
cmovbe ax, ax
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], al
and sil, dl
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], dil
or al, dl
test sil, dl
and rax, 0b1111111111111 # instrumentation
xor rdi, qword ptr [r14 + rax]
and rdi, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rdi], -103
and edx, -44
or bl, dl
or al, sil
and sil, 89
xor al, -19
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], dil
or dl, -97
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
