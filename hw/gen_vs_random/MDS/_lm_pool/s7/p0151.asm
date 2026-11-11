.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and bx, 3
or bx, 56
or rcx, 54
and rdi, 28
and dil, sil
test eax, 343548072
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], sil
or al, cl
test al, 91
xor dl, 34
test dil, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
