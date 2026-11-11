.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
inc rdi
sbb al, -50
xor bl, 38
xor bl, dl
sbb dl, cl
and sil, 37
jmp .bb_0.1
.bb_0.1:
cmp ax, -4865
jmp .bb_0.2
.bb_0.2:
jmp .bb_0.3
.bb_0.3:
and rsi, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rsi], 6
and rax, 0b1111111111111 # instrumentation
imul ebx, dword ptr [r14 + rax], 22
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
