.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, 67 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovs ax, word ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
add dil, byte ptr [r14 + rdx]
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], dl
jmp .bb_0.1
.bb_0.1:
jl .bb_0.2
jmp .bb_0.3
.bb_0.2:
and rax, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rax], 38
jmp .bb_0.3
.bb_0.3:
and rcx, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rcx], 105
bt ecx, edi
or rdi, 5
lea bx, qword ptr [rdx]
and edx, 23
and cl, cl
and rdx, 0b1111111111111 # instrumentation
mov cl, byte ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
