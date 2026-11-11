.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea cx, qword ptr [rcx]
lea rbx, qword ptr [rdi + rcx + 24]
and rbx, 0b1111111111111 # instrumentation
cmovo ecx, dword ptr [r14 + rbx]
add al, 56
cmp cl, dil
lea si, qword ptr [rbx]
jmp .bb_0.1
.bb_0.1:
xor dl, cl
sub dl, al
and dl, cl
or dil, sil
and rax, 0b1111111111111 # instrumentation
cmovnb ecx, dword ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
