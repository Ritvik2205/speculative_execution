.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rcx], dil
sub dil, -111
and rcx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rcx], 65
add bl, bl
adc bl, -73
jl .bb_0.1
jmp .exit_0
.bb_0.1:
xor bl, al
mov bl, al
sub al, dl
and rcx, 0b1111111111111 # instrumentation
mov dx, word ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rsi], dil
sbb dl, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
