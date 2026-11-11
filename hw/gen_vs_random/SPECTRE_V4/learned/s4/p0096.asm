.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdi], dl
cmp al, 98
and rdi, 0b1111111111111 # instrumentation
imul si, word ptr [r14 + rdi]
xchg edx, esi
xor dil, dl
sub al, dl
cmp cl, al
sub cl, dil
cmp rdi, 28
and rsi, 0b1111111111111 # instrumentation
or bl, byte ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
add dl, byte ptr [r14 + rcx]
cmp dl, dil
add al, -112
adc dil, cl
add dil, cl
and rax, 0b1111111111111 # instrumentation
cmovnb di, word ptr [r14 + rax]
adc bl, -20
and cx, -117
or dil, sil
mov dl, dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
