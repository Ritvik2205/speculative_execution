.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
xor eax, dword ptr [r14 + rdi]
and dl, -73
and rsi, 0b1111111111111 # instrumentation
xor rbx, qword ptr [r14 + rsi]
xor dl, al
xor dil, dl
jmp .bb_0.1
.bb_0.1:
or dl, -31
and rdi, 0b1111111111111 # instrumentation
xor cl, byte ptr [r14 + rdi]
or bl, -52
jmp .bb_0.2
.bb_0.2:
xor al, 115
or cl, 30
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], cl
and rdi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdi], dl
or ax, 85
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
