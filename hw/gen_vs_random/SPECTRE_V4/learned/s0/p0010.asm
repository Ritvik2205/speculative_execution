.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or al, bl
sub al, -84
cmp rdx, -49
cmp dl, al
or al, 27
cmp ecx, 50
adc eax, 948001339
sub dil, bl
and rsi, 0b1111111111111 # instrumentation
mov bl, byte ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
mov dl, byte ptr [r14 + rbx]
cmovnz eax, ecx
adc sil, -2
sub bl, sil
adc sil, cl
xor eax, -1772786275
mov bl, sil
and al, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
