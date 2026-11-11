.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or al, -2
xor rcx, 6
and rdi, 0b1111111111000 # instrumentation
lock inc qword ptr [r14 + rdi]
and al, al
add al, 74
cmp cl, dil
xor bl, cl
and rbx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rbx], 98
add dil, 88
and rdi, 0b1111111111111 # instrumentation
sbb word ptr [r14 + rdi], 34
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
