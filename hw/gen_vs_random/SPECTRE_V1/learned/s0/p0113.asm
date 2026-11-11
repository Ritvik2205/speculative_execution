.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea di, qword ptr [rdi]
and dl, -92
dec bl
sub rax, -1628299544
cmp al, cl
sbb eax, 2098460225
sub al, -89
and rbx, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rbx], -83
add al, -65
lea cx, qword ptr [rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
