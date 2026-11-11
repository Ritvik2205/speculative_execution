.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
sub dil, byte ptr [r14 + rbx]
and bx, -118
and rcx, 0b1111111111111 # instrumentation
or edi, dword ptr [r14 + rcx]
and rax, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rax], 78
cmp di, 49
lea rdx, qword ptr [rcx + rbx + 21]
jp .bb_0.1
jmp .exit_0
.bb_0.1:
lea eax, qword ptr [rcx]
setz al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
