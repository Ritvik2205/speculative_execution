.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or al, dil
and rax, 0b1111111111111 # instrumentation
bt word ptr [r14 + rax], 5
and rbx, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
bt qword ptr [r14 + rbx], rdx
xor al, 34
or dil, -78
and rdi, 0b1111111111111 # instrumentation
and eax, 0b111 # instrumentation
bts dword ptr [r14 + rdi], eax
xor al, -89
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], 751805012
or sil, cl
xor cl, 15
and dl, al
btr cx, bx
xor dil, dl
and rdi, 0b1111111111000 # instrumentation
lock not word ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
