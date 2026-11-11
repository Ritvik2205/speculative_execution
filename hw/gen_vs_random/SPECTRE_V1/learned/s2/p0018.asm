.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xchg ecx, eax
jp .bb_0.1
jmp .exit_0
.bb_0.1:
add dil, -75
and rax, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rax], 29
test al, 42
and rdx, 0b1111111111111 # instrumentation
or ax, word ptr [r14 + rdx]
xchg rcx, rdx
xchg eax, edx
mov dl, bl
lea rax, qword ptr [rbx + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
