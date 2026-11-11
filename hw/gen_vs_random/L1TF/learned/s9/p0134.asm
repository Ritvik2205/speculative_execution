.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add sil, 21 # instrumentation
adc si, 2
adc bl, al
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], dl
and rbx, 0b1111111111111 # instrumentation
sub dl, byte ptr [r14 + rbx]
inc dil
sub al, 9
xor bl, dl
sbb al, bl
and rbx, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rbx], 27
xor bl, dl
xor ax, 30996
and rsi, 0b1111111111111 # instrumentation
mov cl, byte ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
