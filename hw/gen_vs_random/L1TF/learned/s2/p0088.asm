.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
add al, byte ptr [r14 + rdx]
lea rcx, qword ptr [rdi + rdi]
and rdx, 0b1111111111111 # instrumentation
cmovl rax, qword ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
or cl, byte ptr [r14 + rbx]
test al, -70
and rbx, 0b1111111111111 # instrumentation
cmovnbe rax, qword ptr [r14 + rbx]
jmp .bb_0.1
.bb_0.1:
and dx, 50
sub bl, -96
sbb rdx, 98
lea rcx, qword ptr [rdx + rdi + 57]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
