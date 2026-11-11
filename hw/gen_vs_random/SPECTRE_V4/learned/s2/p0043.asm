.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or sil, al
and ax, -197
adc bl, al
dec al
or al, dil
sbb bl, dl
jmp .bb_0.1
.bb_0.1:
sub al, 26
adc edx, -125
and rax, 1072797615
and cx, -117
and rax, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rax], dl
sub dl, -16
sub al, 55
and al, 59
adc sil, 77
cmp dil, -29
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], al
sub dl, cl
and rax, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rax], sil
mov al, cl
sub esi, -69
add al, -127
test eax, -651442446
or cl, sil
sub bl, sil
adc bl, 127
adc dil, dl
adc cl, al
adc dil, bl
xor bl, cl
and rsi, 0b1111111111111 # instrumentation
imul cx, word ptr [r14 + rsi], 92
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
