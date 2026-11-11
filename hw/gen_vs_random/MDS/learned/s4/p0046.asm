.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test al, sil
test al, -81
test al, 22
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], bl
and rdi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdi], -113
test rdi, 82
jmp .bb_0.1
.bb_0.1:
and al, -114
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], dil
test esi, 425331143
xor dl, al
and ax, -12519
or ax, -20176
xor ax, -1005
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
