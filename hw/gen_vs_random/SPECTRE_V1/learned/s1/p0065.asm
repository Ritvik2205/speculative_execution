.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea bx, qword ptr [rbx]
and al, cl
adc sil, -77
xchg al, cl
test al, 40
cmp al, sil
and rdx, 0b1111111111111 # instrumentation
adc al, byte ptr [r14 + rdx]
xor dil, -37
lea eax, qword ptr [rsi]
sbb bl, 79
or dl, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
