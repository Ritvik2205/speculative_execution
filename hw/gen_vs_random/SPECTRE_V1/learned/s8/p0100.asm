.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, 65 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovl ecx, dword ptr [r14 + rcx]
mov bl, al
and rdx, 0b1111111111111 # instrumentation
cmovle rax, qword ptr [r14 + rdx]
js .bb_0.1
jmp .exit_0
.bb_0.1:
sub dl, 71
and rcx, 0b1111111111111 # instrumentation
and word ptr [r14 + rcx], si
sub bl, -6
and cx, 40
and rbx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rbx], 96
cmp rdi, 70
and rdi, 0b1111111111111 # instrumentation
and word ptr [r14 + rdi], ax
or bl, dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
