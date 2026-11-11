.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, 65 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovl edi, dword ptr [r14 + rdi]
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], dl
and rdx, 0b1111111111111 # instrumentation
sbb al, byte ptr [r14 + rdx]
or dil, dl
cmovns rax, rbx
lea eax, qword ptr [rbx]
cmp dl, -56
btr ax, bx
or sil, -44
sub bl, -96
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
