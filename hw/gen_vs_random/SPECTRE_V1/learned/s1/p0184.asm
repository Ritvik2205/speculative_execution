.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or eax, -1641258390
jp .bb_0.1
jmp .exit_0
.bb_0.1:
lea ax, qword ptr [rdx + rcx + 43552]
cmovno rax, rcx
and rax, 0b1111111111111 # instrumentation
sub bl, byte ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rax], dil
sub al, -1
or al, 100
and rbx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rbx], al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
