.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
inc rdx
and rbx, 0b1111111111111 # instrumentation
mov dil, byte ptr [r14 + rbx]
sub al, -47
cmovnz rbx, rcx
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
and dword ptr [r14 + rax], esi
and cl, bl
or dil, -113
and rax, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rax], 57
and rax, 0b1111111111111 # instrumentation
cmovle rbx, qword ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
