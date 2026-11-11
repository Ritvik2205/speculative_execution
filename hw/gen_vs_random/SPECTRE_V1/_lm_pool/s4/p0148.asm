.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rdi], 2
sub dil, -111
lea dx, qword ptr [rax]
lea ebx, qword ptr [rdi]
and rbx, 0b1111111111111 # instrumentation
mov dl, byte ptr [r14 + rbx]
lea eax, qword ptr [rbx]
jp .bb_0.1
jmp .exit_0
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
cmovo dx, word ptr [r14 + rcx]
sub dl, bl
sub bl, -19
sub cx, 31
lea rax, qword ptr [rcx]
sbb al, -112
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
