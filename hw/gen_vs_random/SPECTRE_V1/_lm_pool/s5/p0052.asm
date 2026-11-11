.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
sub word ptr [r14 + rdi], -36
and rdi, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rdi], 2
or edx, 0b1000000000000000000000000000000 # instrumentation
bsf eax, edx
cmovns rax, rdx
lea cx, qword ptr [rax]
sbb al, bl
and rax, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rax], -125
and rdi, 0b1111111111111 # instrumentation
cmovs rbx, qword ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
mov ebx, dword ptr [r14 + rdx]
lea dx, qword ptr [rdi + rcx]
and rdi, 0b1111111111111 # instrumentation
cmovo si, word ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
