.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rax], 35
and rbx, 0b1111111111111 # instrumentation
cmovnz rax, qword ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
cmp cl, byte ptr [r14 + rdi]
or cl, dl
add al, -13
and sil, dil
lea cx, qword ptr [rbx + rax + 16]
and rsi, 0b1111111111111 # instrumentation
adc dl, byte ptr [r14 + rsi]
sub bl, dl
adc cl, -81
mov cl, al
and rax, 0b1111111111111 # instrumentation
or byte ptr [r14 + rax], sil
imul rdi, rsi, -45
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
