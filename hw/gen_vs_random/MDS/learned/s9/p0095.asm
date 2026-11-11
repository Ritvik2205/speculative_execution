.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and dx, 60
test al, 22
btr eax, ecx
test rcx, -613256812
or ax, -6817
jmp .bb_0.1
.bb_0.1:
test sil, 41
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], dl
and rdi, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rdi], edx
jmp .bb_0.2
.bb_0.2:
test al, 66
jmp .bb_0.3
.bb_0.3:
and al, sil
xor dil, -124
jmp .bb_0.4
.bb_0.4:
and si, -121
and sil, 89
and rcx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rcx], -1593756837
test eax, 343548072
or rdi, -11
or ax, -23697
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
