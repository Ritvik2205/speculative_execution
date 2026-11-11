.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, -60 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovl di, word ptr [r14 + rcx]
and rax, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rax], bl
xor al, 45
xor cx, 113
xor al, dil
and rbx, 0b1111111111111 # instrumentation
cmovo ax, word ptr [r14 + rbx]
bt edx, ebx
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
cmovle rax, qword ptr [r14 + rdx]
sbb rdi, 99
btc dx, cx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
