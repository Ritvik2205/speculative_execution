.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
movsx esi, di
or ebx, 92
test ebx, 48
and rdi, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rdi], rdx
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], -1923530546
movsx ecx, cl
jmp .bb_0.1
.bb_0.1:
test rdi, rcx
sub al, -3
and rdx, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rdx], -128
and rcx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rcx], 0b1000000000000000000000000000000 # instrumentation
bsr rbx, qword ptr [r14 + rcx]
lea rbx, qword ptr [rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
