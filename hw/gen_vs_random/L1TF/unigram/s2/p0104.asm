.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rdx], dil
or rdi, 0b1000 # instrumentation
and dil, 0b11111000 # instrumentation
and rdx, 0b11 # instrumentation
idiv rdi
sub sil, -99
and edi, 99
xor dil, dil
and rax, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rax], al
adc bl, dl
and rax, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rax], dl
lea rdx, qword ptr [rsi + rcx]
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rdx], 16
and rsi, 0b1111111111111 # instrumentation
cmovnbe rcx, qword ptr [r14 + rsi]
setb al
and rdi, 0b1111111111111 # instrumentation
xor rcx, qword ptr [r14 + rdi]
xor cl, sil
movsx esi, dl
and rsi, 0b1111111111111 # instrumentation
adc edx, dword ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
