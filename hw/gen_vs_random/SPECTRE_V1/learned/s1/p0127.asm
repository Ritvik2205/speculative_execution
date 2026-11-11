.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, 107 # instrumentation
lea ecx, qword ptr [rdx + rsi + 61]
jl .bb_0.1
jmp .exit_0
.bb_0.1:
sub cl, dl
lea edx, qword ptr [rsi]
and al, sil
and rdx, 0b1111111111111 # instrumentation
mov rax, qword ptr [r14 + rdx]
sbb al, 33
and rbx, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
cmp cl, byte ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rcx], -42
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
