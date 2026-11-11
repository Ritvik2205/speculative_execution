.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or cl, dl
lea rbx, qword ptr [rdi + rdi + 60]
cmovb ax, cx
adc bl, dil
and rsi, 0b1111111111111 # instrumentation
mov edx, dword ptr [r14 + rsi]
xor dl, al
xor al, sil
jmp .bb_0.1
.bb_0.1:
lea di, qword ptr [rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
