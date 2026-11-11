.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rax], 3
and rdx, 0b1111111111111 # instrumentation
cmovl rsi, qword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rax], 3
add dl, 52 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovnb rbx, qword ptr [r14 + rdx]
sub dl, 96
add dl, 71 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovl dx, word ptr [r14 + rdx]
cmovz ebx, edx
sub sil, al
sub al, cl
add dil, -55 # instrumentation
and rdi, 0b1111111111111 # instrumentation
adc ecx, dword ptr [r14 + rdi]
loopne .bb_0.1
jmp .exit_0
.bb_0.1:
add cl, sil
xchg cl, sil
inc rax
and rax, 0b1111111111111 # instrumentation
mul dword ptr [r14 + rax]
add al, 36 # instrumentation
cmovnp rdx, rax
and rdx, 0b1111111111111 # instrumentation
add byte ptr [r14 + rdx], dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
