.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
inc rdi
cmp rcx, 25
add al, -72
and rax, 0b1111111111111 # instrumentation
cmovp rbx, qword ptr [r14 + rax]
and rax, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rax], dl
lea ax, qword ptr [rbx + rdx + 32397]
and rdx, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rdx], rdi
jp .bb_0.1
jmp .bb_0.2
.bb_0.1:
js .bb_0.2
jmp .exit_0
.bb_0.2:
and rcx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rcx], 65
lea dx, qword ptr [rcx + rbx + 54281]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
