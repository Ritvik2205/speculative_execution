.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rax], ecx
or bl, 1 # instrumentation
mov ax, 1 # instrumentation
div bl
cmovns rax, rdx
xchg sil, dl
or bx, 0b1000000000000000 # instrumentation
bsf cx, bx
and rax, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rax], ecx
sub sil, bl
xchg rdx, rsi
imul al
and rax, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rax], 3
jb .bb_0.1
jmp .exit_0
.bb_0.1:
or rax, 0b1000000000000000000000000000000 # instrumentation
bsr rbx, rax
inc dx
setz al
or dil, 98
sbb al, al
cmovnbe bx, si
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
