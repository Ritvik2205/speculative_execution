.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rax], 89
cmp rbx, 52
cmp rbx, 39
xor al, sil
sub dil, cl
js .bb_0.1
jmp .exit_0
.bb_0.1:
and sil, 52
cmp dx, 19
and rax, 0b1111111111111 # instrumentation
xor dl, byte ptr [r14 + rax]
and dil, al
and rdx, 0b1111111111111 # instrumentation
or ebx, dword ptr [r14 + rdx]
sub dil, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
