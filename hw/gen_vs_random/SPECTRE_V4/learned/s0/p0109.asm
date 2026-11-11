.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor dx, 7
and rdx, 0b1111111111111 # instrumentation
cmovnbe rsi, qword ptr [r14 + rdx]
or bl, al
btr rax, rcx
cmp rdi, 28
add cl, al
mov bl, cl
adc al, sil
sub al, 26
cmovno ax, cx
or al, dil
or cl, 12
and rbx, 0b1111111111111 # instrumentation
mov rax, qword ptr [r14 + rbx]
adc al, sil
sub rax, -1881584175
cmp bl, dl
and cl, sil
or dl, dl
adc dil, cl
sbb eax, 426996540
and rdi, 0b1111111111111 # instrumentation
sbb sil, byte ptr [r14 + rdi]
and ax, -12738
test edi, -1380439873
sub ebx, 8
and rax, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rax], cl
btc rbx, rdi
and rsi, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rsi]
cmp rsi, 74
cmp al, 116
sbb dil, 10
not dil
cmp al, dl
sbb al, dl
and cx, -117
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
