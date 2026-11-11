.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor al, -26
and rbx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rbx], al
or sil, al
test rcx, -613256812
test cl, sil
or ax, -14271
and dl, dl
bt ax, si
xor dl, -43
or sil, al
and rdi, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rdi], eax
or cl, bl
and bl, 68
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], sil
xor cl, 24
xor rax, -1128378406
cmp dl, 48
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
