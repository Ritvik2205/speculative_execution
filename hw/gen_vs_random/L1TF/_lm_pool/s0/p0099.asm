.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -57 # instrumentation
and rbx, 0b1111111111111 # instrumentation
movzx rdx, byte ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
or eax, dword ptr [r14 + rdi]
or al, dil
and bx, 34
cmovbe esi, ebx
and al, cl
and rcx, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rcx]
jmp .bb_0.1
.bb_0.1:
test al, cl
jmp .bb_0.2
.bb_0.2:
test cl, 39
add edi, 27
test dx, 53
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
