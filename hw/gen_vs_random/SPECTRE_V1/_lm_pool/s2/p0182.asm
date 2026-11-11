.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test dl, -7
jno .bb_0.1
jmp .bb_0.2
.bb_0.1:
jns .bb_0.2
jmp .exit_0
.bb_0.2:
xor bl, bl
and rdx, 0b1111111111111 # instrumentation
adc dil, byte ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
cmovz esi, dword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
adc bx, word ptr [r14 + rax]
sbb bl, sil
and rcx, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
adc bl, byte ptr [r14 + rcx]
bt edx, 20
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
