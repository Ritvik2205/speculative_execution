.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovo si, ax
and rax, 0b1111111111000 # instrumentation
lock inc dword ptr [r14 + rax]
and rdi, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rdi], dil
xchg cl, sil
and rax, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rax], 95
lea ax, qword ptr [rbx + rcx + 52]
not cl
and rbx, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rbx], sil
lea ebx, qword ptr [rdx + rdi + 99]
loope .bb_0.1
jmp .exit_0
.bb_0.1:
mov ebx, 24
nop
sub dil, dil
and rax, 0b1111111111111 # instrumentation
sub bl, byte ptr [r14 + rax]
inc ecx
not dx
and rdi, 0b1111111111111 # instrumentation
cmovo rax, qword ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
