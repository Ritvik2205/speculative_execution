.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sub al, -66
test al, sil
or dl, bl
or ebx, 0b1000000000000000000000000000000 # instrumentation
bsf eax, ebx
mov bl, cl
and rsi, 0b1111111111111 # instrumentation
adc dil, byte ptr [r14 + rsi]
sbb dil, dl
xor dl, 71
test al, 48
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], cl
sub bx, 64
xor rsi, rcx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
