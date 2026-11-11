.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and bl, -103 # instrumentation
cmovbe bx, bx
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], al
test cl, -62
lea rdx, qword ptr [rcx + rax]
sub dil, -32
and dl, -109
add sil, bl
lea rbx, qword ptr [rdi + rax + 90]
lea rax, qword ptr [rcx]
test ax, -13885
sub sil, -18
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
