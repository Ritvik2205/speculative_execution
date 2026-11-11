.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, 65 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovl ebx, dword ptr [r14 + rbx]
cmp edi, 51
js .bb_0.1
jmp .exit_0
.bb_0.1:
test cl, -24
lea dx, qword ptr [rcx + rdi]
sbb al, dil
lea rdx, qword ptr [rax + rsi + 15]
sbb ecx, 84
cmp bl, cl
and al, dl
and rax, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rax], -125
and rax, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rax], sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
