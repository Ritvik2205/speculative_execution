.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
inc rdi
cmp eax, 951020724
and rcx, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
sub word ptr [r14 + rdi], 116
and rbx, 0b1111111111111 # instrumentation
imul eax, dword ptr [r14 + rbx]
sbb cl, sil
jmp .bb_0.1
.bb_0.1:
jmp .bb_0.2
.bb_0.2:
jmp .bb_0.3
.bb_0.3:
jmp .bb_0.4
.bb_0.4:
test eax, -2032743474
and rbx, 0b1111111111111 # instrumentation
sub eax, dword ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
