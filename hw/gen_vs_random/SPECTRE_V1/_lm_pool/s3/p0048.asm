.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or edx, esi
and rcx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rcx], -121
sub al, bl
sub bl, dl
cmp cl, al
sub al, cl
inc ecx
and rcx, 0b1111111111111 # instrumentation
xor sil, byte ptr [r14 + rcx]
lea cx, qword ptr [rsi + rax + 56]
add cl, -127
js .bb_0.1
jmp .exit_0
.bb_0.1:
jno .exit_0
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
