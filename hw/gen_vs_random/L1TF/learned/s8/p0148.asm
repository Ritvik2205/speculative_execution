.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rdi], 99
not sil
sub al, -75
and rbx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rbx], ax
and al, cl
and al, -68
or rax, 1808026647
jmp .bb_0.1
.bb_0.1:
lea rdx, qword ptr [rcx + rdi]
xor al, dil
jmp .bb_0.2
.bb_0.2:
test cl, 30
jmp .bb_0.3
.bb_0.3:
and rcx, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rcx], 105
xor si, -50
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
