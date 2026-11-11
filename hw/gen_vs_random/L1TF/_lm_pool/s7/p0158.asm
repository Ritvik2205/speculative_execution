.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and bl, 109 # instrumentation
cmovs bx, cx
sub dl, 105
and rax, 0b1111111111111 # instrumentation
or di, word ptr [r14 + rax]
sub sil, -99
and dl, -86
seto bl
and rax, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rax], dil
and al, al
and rax, 0b1111111111111 # instrumentation
cmovl ebx, dword ptr [r14 + rax]
movzx dx, bl
bts edx, 52
xor dl, 19
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
