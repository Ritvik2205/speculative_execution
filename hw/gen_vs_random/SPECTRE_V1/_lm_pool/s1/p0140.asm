.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rsi], 6
and rax, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rax], 3
mov dil, sil
cmovno dx, cx
setp al
sbb ebx, 10
and dl, -92
add bl, al
add dl, 47
jns .bb_0.1
jmp .exit_0
.bb_0.1:
lea edx, qword ptr [rbx]
and al, -54
adc sil, -77
test eax, edi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
