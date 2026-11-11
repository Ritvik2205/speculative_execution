.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xchg esi, ebx
and rdx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rdx], sil
cmovno rbx, rsi
and rdx, 0b1111111111111 # instrumentation
sub cl, byte ptr [r14 + rdx]
and al, al
adc dil, cl
sbb bl, 79
js .bb_0.1
jmp .exit_0
.bb_0.1:
and dl, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
