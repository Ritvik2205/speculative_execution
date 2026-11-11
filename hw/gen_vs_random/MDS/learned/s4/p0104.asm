.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and bx, 26
test dl, 9
xor al, 115
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], sil
or dl, al
and rdx, 0b1111111111111 # instrumentation
or rdi, qword ptr [r14 + rdx]
or bl, 43
xor dl, cl
and rcx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rcx], -232610484
xor cl, sil
and rcx, 0b1111111111111 # instrumentation
xor sil, byte ptr [r14 + rcx]
and al, sil
and bl, 68
test rax, 1949278494
and rbx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rbx], al
xor dil, sil
and rdx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rdx], 5
and al, 49
bt di, bx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
