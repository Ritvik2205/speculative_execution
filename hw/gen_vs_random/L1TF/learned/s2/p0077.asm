.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, 86 # instrumentation
and rax, 0b1111111111111 # instrumentation
sbb cl, byte ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
xor di, word ptr [r14 + rbx]
xor rcx, 2
jmp .bb_0.1
.bb_0.1:
add cl, 44 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovl esi, dword ptr [r14 + rcx]
and dl, -86
sbb al, -23
or ax, 11821
and rax, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rax], 1
or ax, 0b1000000000000000 # instrumentation
bsf bx, ax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
