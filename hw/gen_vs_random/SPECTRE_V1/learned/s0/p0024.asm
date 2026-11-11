.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and ax, 23118
xchg edi, ecx
imul dl
sub rax, -1628299544
xor cl, -40
and rcx, 0b1111111111111 # instrumentation
cmovb bx, word ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rcx], al
and rbx, 0b1111111111111 # instrumentation
add rax, qword ptr [r14 + rbx]
mov dl, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
