.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, 86 # instrumentation
and rax, 0b1111111111111 # instrumentation
sbb dl, byte ptr [r14 + rax]
lea rdi, qword ptr [rcx + rax]
lea dx, qword ptr [rbx + rdi + 50]
and rcx, 0b1111111111111 # instrumentation
adc eax, dword ptr [r14 + rcx]
xor cl, al
and rbx, 0b1111111111111 # instrumentation
cmovp di, word ptr [r14 + rbx]
sbb dil, bl
sub al, dl
and rdx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rdx], cl
jl .bb_0.1
jmp .exit_0
.bb_0.1:
lea rax, qword ptr [rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
