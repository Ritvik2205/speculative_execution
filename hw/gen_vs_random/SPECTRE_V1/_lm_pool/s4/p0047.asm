.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
movsx ecx, si
sub cl, -47
lea di, qword ptr [rdi]
and rbx, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rbx]
and eax, 933895314
add sil, 2
cmp cl, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
