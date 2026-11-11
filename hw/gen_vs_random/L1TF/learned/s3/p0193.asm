.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, -104 # instrumentation
and rax, 0b1111111111000 # instrumentation
lock not byte ptr [r14 + rax]
setp dl
cmp di, 45
lea eax, qword ptr [rbx]
and rcx, 0b1111111111111 # instrumentation
add rdx, qword ptr [r14 + rcx]
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rbx], bl
jmp .bb_0.2
.bb_0.2:
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], -1923530546
inc eax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
