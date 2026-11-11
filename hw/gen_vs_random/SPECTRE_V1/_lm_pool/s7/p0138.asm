.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
sub al, byte ptr [r14 + rsi]
test sil, 47
cmp al, dl
xor dl, bl
adc bl, -73
and rdx, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rdx], dil
add cl, cl
jmp .bb_0.1
.bb_0.1:
inc ecx
lea cx, qword ptr [rbx]
and rax, 0b1111111111111 # instrumentation
xor sil, byte ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
