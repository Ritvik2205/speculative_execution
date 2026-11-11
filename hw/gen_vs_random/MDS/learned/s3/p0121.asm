.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
xor eax, dword ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
bt word ptr [r14 + rax], 5
xor dl, 8
not dil
test cl, cl
and rbx, 0b1111111111111 # instrumentation
or rsi, qword ptr [r14 + rbx]
or al, sil
and dl, al
or al, -75
test bl, -9
xor dil, -3
xor dx, 15
or sil, cl
or al, -22
test rax, 1000448998
or bl, 127
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], 751805012
or cl, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
