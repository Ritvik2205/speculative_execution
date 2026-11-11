.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, 12 # instrumentation
cmovnb edx, eax
and rbx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rbx], sil
lea ax, qword ptr [rdx]
and al, -68
sbb bl, sil
test al, -84
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
add byte ptr [r14 + rbx], dl
lea rdi, qword ptr [rax]
jmp .bb_0.2
.bb_0.2:
and rbx, 0b1111111111111 # instrumentation
cmovl edx, dword ptr [r14 + rbx]
sub bl, dil
and eax, -409673666
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
