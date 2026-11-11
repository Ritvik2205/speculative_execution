.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and dx, 3
and rdx, 0b1111111111111 # instrumentation
xor eax, dword ptr [r14 + rdx]
test sil, 17
and dil, dil
xor dl, 8
or ax, -6817
jmp .bb_0.1
.bb_0.1:
jmp .bb_0.2
.bb_0.2:
test dil, -51
jmp .bb_0.3
.bb_0.3:
and rdx, 0b1111111111111 # instrumentation
and al, byte ptr [r14 + rdx]
or sil, -78
and rax, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rax], bl
xor dil, -70
or dil, al
or rdi, 21
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
