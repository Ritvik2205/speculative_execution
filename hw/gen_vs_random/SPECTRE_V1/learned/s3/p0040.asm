.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or eax, ecx
add bl, 70
and rbx, 0b1111111111111 # instrumentation
cmovz rax, qword ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
cmp al, byte ptr [r14 + rcx]
mov dil, cl
dec ecx
bt edx, eax
test al, 84
jns .bb_0.1
jmp .exit_0
.bb_0.1:
sub rax, -1628299544
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
