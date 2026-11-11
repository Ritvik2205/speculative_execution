.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, 118 # instrumentation
and rcx, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rcx], bx
add ax, -16969
adc bl, 27
sets cl
and rcx, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rcx], 31
cmp cl, 3
and rax, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rax], al
and rbx, 0b1111111111111 # instrumentation
and rax, 0b111 # instrumentation
bts qword ptr [r14 + rbx], rax
jbe .bb_0.1
jmp .exit_0
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
sub qword ptr [r14 + rdx], rbx
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], -58
and rcx, 0b1111111111111 # instrumentation
cmp dl, byte ptr [r14 + rcx]
or bx, 0b1000000000000000 # instrumentation
bsf si, bx
and rcx, 0b1111111111111 # instrumentation
adc dil, byte ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rbx], 67
and rsi, 0b1111111111111 # instrumentation
imul rax, qword ptr [r14 + rsi]
lea ax, qword ptr [rcx]
and sil, dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
