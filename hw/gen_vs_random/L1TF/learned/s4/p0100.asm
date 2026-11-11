.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xchg ecx, edx
test dl, -37
jmp .bb_0.1
.bb_0.1:
and rdi, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rdi], 8
jmp .bb_0.2
.bb_0.2:
lea ebx, qword ptr [rdi]
and rdx, 0b1111111111111 # instrumentation
add qword ptr [r14 + rdx], 50
sbb rax, 1131444263
jmp .bb_0.3
.bb_0.3:
lea rbx, qword ptr [rcx]
jmp .bb_0.4
.bb_0.4:
and cl, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
