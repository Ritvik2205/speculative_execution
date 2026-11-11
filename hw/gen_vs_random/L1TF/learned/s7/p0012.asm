.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, -60 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovl di, word ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
and ecx, 0b111 # instrumentation
bt dword ptr [r14 + rbx], ecx
or cl, -78
and rdi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdi], rdx
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
sub si, word ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rax], 7
and rdi, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rdi]
xor dl, al
or sil, -44
cmp cl, 57
add sil, sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
