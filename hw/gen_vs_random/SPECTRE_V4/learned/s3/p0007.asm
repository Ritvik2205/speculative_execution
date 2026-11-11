.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or cl, 12
and rax, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rax], cl
add bl, cl
and rax, 0b1111111111111 # instrumentation
or di, word ptr [r14 + rax]
sbb cl, 127
test cl, -119
add rcx, 32
and cl, al
and al, 5
jmp .bb_0.1
.bb_0.1:
add cl, -62
sbb cl, 35
or dil, 89
bts ecx, 0
imul si, cx, 69
and bl, -30
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], sil
sub dil, sil
sub rbx, 101
and rbx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rbx], al
xor al, 57
xchg ebx, eax
xor sil, al
adc al, dl
adc dl, 87
cmp al, -44
xchg rdi, rsi
adc bl, al
or ax, 11396
mov bl, dl
cmp rsi, 74
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
