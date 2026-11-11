.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor bx, -65
test dil, bl
cmp al, 105
or dl, sil
and rax, 0b1111111111111 # instrumentation
or sil, byte ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rdi]
and dil, dil
and rcx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rcx], al
and al, -124
test esi, -2111618709
mov dil, bl
movsx di, dl
and rdx, 0b1111111111111 # instrumentation
or cl, byte ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
