.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, -60 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovl bx, word ptr [r14 + rdx]
cmp cl, sil
sub sil, dil
lea rcx, qword ptr [rdi]
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], bl
xor dl, 19
and rdi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdi], 49
add al, -102
xor al, 16
and rax, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rax], di
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
