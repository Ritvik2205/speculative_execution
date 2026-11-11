.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or sil, cl
and rbx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rbx], 4
and ax, -12519
btc ax, 14
xor dil, sil
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rcx], dl
jmp .bb_0.2
.bb_0.2:
xor dil, -3
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], bl
jmp .bb_0.3
.bb_0.3:
or bl, 127
and rax, 0b1111111111111 # instrumentation
or rdx, qword ptr [r14 + rax]
xor al, 122
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
