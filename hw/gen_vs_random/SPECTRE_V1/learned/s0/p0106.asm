.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and al, 33
xor al, -42
or si, si
test bl, -8
and rax, 0b1111111111111 # instrumentation
inc byte ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
or cl, byte ptr [r14 + rdi]
cmp cl, dil
inc eax
jns .bb_0.1
jmp .exit_0
.bb_0.1:
cmp ax, 7452
add al, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
