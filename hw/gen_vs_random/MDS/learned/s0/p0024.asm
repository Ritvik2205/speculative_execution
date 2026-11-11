.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor dl, -19
or al, bl
xor sil, 94
jmp .bb_0.1
.bb_0.1:
jmp .bb_0.2
.bb_0.2:
and ax, -16061
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], 751805012
and rdx, 0b1111111111111 # instrumentation
xor dil, byte ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
or sil, byte ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
or bx, word ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], sil
not dil
and rdx, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rdx], 6
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
