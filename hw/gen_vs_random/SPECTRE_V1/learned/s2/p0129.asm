.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test sil, al
and rax, 0b1111111111111 # instrumentation
or esi, dword ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
cmovz edx, dword ptr [r14 + rdi]
test cl, al
mov dl, cl
lea rax, qword ptr [rcx + rdx + 95]
lea bx, qword ptr [rdx]
sub dl, cl
add al, -109
cmp al, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
