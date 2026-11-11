.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test dl, sil
jnle .bb_0.1
jmp .exit_0
.bb_0.1:
lea rax, qword ptr [rbx]
and rbx, 0b1111111111111 # instrumentation
cmp rsi, qword ptr [r14 + rbx]
lea rdx, qword ptr [rcx + rsi]
add cl, bl
sub si, 32
and rdx, 0b1111111111111 # instrumentation
or si, word ptr [r14 + rdx]
sub rax, -1628299544
and rbx, 0b1111111111111 # instrumentation
mov ebx, dword ptr [r14 + rbx]
adc edi, 11
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
