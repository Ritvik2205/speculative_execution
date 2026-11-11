.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and dil, -103 # instrumentation
cmovbe di, di
and rdi, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rdi], cl
setz al
cmp dl, cl
lea di, qword ptr [rcx + rax]
xor dl, dil
mov bl, dl
lea ax, qword ptr [rbx + rdx]
test bl, -8
and rax, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rax], -125
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
