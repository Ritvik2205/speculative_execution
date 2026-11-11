.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rdx], 3
and rcx, 0b1111111111111 # instrumentation
add sil, byte ptr [r14 + rcx]
sub dl, 41
and rdi, 0b1111111111111 # instrumentation
mov bx, word ptr [r14 + rdi]
cmp cl, 57
jmp .bb_0.1
.bb_0.1:
jmp .bb_0.2
.bb_0.2:
and rdx, 0b1111111111111 # instrumentation
movzx rdx, word ptr [r14 + rdx]
and dl, -49
and dl, -49
jmp .bb_0.3
.bb_0.3:
and rax, 0b1111111111111 # instrumentation
and byte ptr [r14 + rax], 66
and rdx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rdx], 7
bt bx, si
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
