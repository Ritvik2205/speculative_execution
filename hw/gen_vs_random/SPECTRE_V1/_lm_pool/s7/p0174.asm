.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, 12 # instrumentation
cmovnb edx, eax
inc rcx
and rbx, 0b1111111111111 # instrumentation
sub edx, dword ptr [r14 + rbx]
and cl, bl
sbb al, -112
add dil, 72
and rdi, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rdi], cl
jns .bb_0.1
jmp .bb_0.2
.bb_0.1:
jp .bb_0.2
jmp .exit_0
.bb_0.2:
btr ax, bx
mov bl, -31
add al, al
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
