.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111000 # instrumentation
lock bts qword ptr [r14 + rdi], 28
and rbx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rbx]
and ax, 37
cmp al, 27
and dl, -86
jmp .bb_0.1
.bb_0.1:
adc eax, 457059541
sbb al, 92
and rcx, 0b1111111111111 # instrumentation
add eax, dword ptr [r14 + rcx]
jmp .bb_0.2
.bb_0.2:
or cl, bl
cmovl eax, ebx
sbb bl, dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
