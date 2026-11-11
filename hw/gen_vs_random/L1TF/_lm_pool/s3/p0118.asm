.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rdx], -100
and rax, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rax], bl
and rbx, 0b1111111111111 # instrumentation
mov dil, byte ptr [r14 + rbx]
jmp .bb_0.1
.bb_0.1:
sub al, -3
and dl, cl
and rdx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdx], cl
and rbx, 0b1111111111111 # instrumentation
mov ecx, dword ptr [r14 + rbx]
and rax, 1994547909
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
