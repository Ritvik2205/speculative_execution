.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, 27 # instrumentation
mov al, dl
and rbx, 0b1111111111111 # instrumentation
add edi, dword ptr [r14 + rbx]
xor bl, sil
and rax, 0b1111111111111 # instrumentation
cmovz rdi, qword ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
and bl, byte ptr [r14 + rdi]
test cl, al
test esi, 88
and rax, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rax], 1
sbb bl, dl
jmp .bb_0.1
.bb_0.1:
and bl, 89
cmovl edi, ecx
and al, -68
sub rax, 1715032616
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
