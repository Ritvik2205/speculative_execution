.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
movsx edx, cx
and rbx, 0b1111111111111 # instrumentation
add byte ptr [r14 + rbx], -41
and rcx, 0b1111111111111 # instrumentation
and dx, word ptr [r14 + rcx]
cmp dil, dl
sub cl, 86
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], esi
and rdi, 0b1111111111111 # instrumentation
mov cl, byte ptr [r14 + rdi]
or al, -2
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
