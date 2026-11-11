.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
or eax, dword ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
sub dl, byte ptr [r14 + rcx]
sub cl, al
dec al
and rdi, 0b1111111111111 # instrumentation
xor dl, byte ptr [r14 + rdi]
lea dx, qword ptr [rbx + rcx + 75]
and cl, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
