.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rdx], -100
sub al, -47
jmp .bb_0.1
.bb_0.1:
add bl, -113 # instrumentation
and rax, 0b1111111111111 # instrumentation
movzx eax, word ptr [r14 + rax]
sub dil, -70
and rdx, 0b1111111111111 # instrumentation
cmovl rbx, qword ptr [r14 + rdx]
jmp .bb_0.2
.bb_0.2:
or bl, dl
sub dil, bl
lea ecx, qword ptr [rcx + rbx + 53]
and rbx, 0b1111111111111 # instrumentation
and dx, word ptr [r14 + rbx]
test dl, -37
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
