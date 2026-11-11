.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sub dl, 71
sbb al, sil
inc edi
xchg ecx, edx
sub al, -89
and rbx, 0b1111111111111 # instrumentation
cmovl edi, dword ptr [r14 + rbx]
sbb ebx, 53
lea cx, qword ptr [rcx + rbx]
add al, dl
add bl, sil
jl .bb_0.1
jmp .bb_0.2
.bb_0.1:
mov sil, al
jle .bb_0.2
jmp .exit_0
.bb_0.2:
and rax, 0b1111111111111 # instrumentation
cmovnz rdx, qword ptr [r14 + rax]
cmp al, 23
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
