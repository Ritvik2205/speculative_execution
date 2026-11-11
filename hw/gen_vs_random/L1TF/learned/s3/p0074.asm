.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rcx]
cmp rbx, 51
sbb dl, al
jmp .bb_0.1
.bb_0.1:
dec dl
and rbx, 0b1111111111111 # instrumentation
cmovs eax, dword ptr [r14 + rbx]
sub cl, bl
jmp .bb_0.2
.bb_0.2:
add bl, al
adc sil, 33
adc cl, -34
sbb al, -4
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
