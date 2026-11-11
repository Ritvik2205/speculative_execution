.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rax], 40
adc bl, dl
sbb al, bl
lea cx, qword ptr [rax]
and rdx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rdx], esi
not cl
lea di, qword ptr [rbx + rsi]
btc edi, 92
and rbx, 0b1111111111111 # instrumentation
cmovnle rax, qword ptr [r14 + rbx]
cmovnle rax, rdi
jmp .bb_0.1
.bb_0.1:
mov bl, sil
lea rsi, qword ptr [rcx + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
