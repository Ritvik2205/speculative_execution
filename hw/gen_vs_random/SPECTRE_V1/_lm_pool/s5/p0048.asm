.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and bl, -89 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovnle esi, dword ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
adc bl, byte ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
adc cl, byte ptr [r14 + rdi]
xor dl, al
xor al, cl
and rdi, 0b1111111111111 # instrumentation
sub cl, byte ptr [r14 + rdi]
bt esi, edx
lea edi, qword ptr [rdx]
sbb dil, sil
jns .bb_0.1
jmp .exit_0
.bb_0.1:
adc dl, 48
adc al, -92
and rsi, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
