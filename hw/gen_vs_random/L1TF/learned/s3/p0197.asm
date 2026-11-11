.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
sub word ptr [r14 + rax], 43
and dl, al
jmp .bb_0.1
.bb_0.1:
jmp .bb_0.2
.bb_0.2:
or cl, sil
lea di, qword ptr [rsi]
jmp .bb_0.3
.bb_0.3:
adc al, -6
sub rbx, 66
and rbx, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
adc al, byte ptr [r14 + rdi]
adc bl, -14
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
