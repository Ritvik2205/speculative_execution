.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
sub word ptr [r14 + rbx], 69
sub cl, -21
sub al, -66
jns .bb_0.1
jmp .bb_0.2
.bb_0.1:
lea rax, qword ptr [rdx]
and rax, 0b1111111111111 # instrumentation
sub cx, word ptr [r14 + rax]
sbb al, -114
or ax, -114
and rax, 0b1111111111111 # instrumentation
or edx, dword ptr [r14 + rax]
jp .bb_0.2
jmp .exit_0
.bb_0.2:
and rbx, 0b1111111111111 # instrumentation
cmp al, byte ptr [r14 + rbx]
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], dil
lea rdx, qword ptr [rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
