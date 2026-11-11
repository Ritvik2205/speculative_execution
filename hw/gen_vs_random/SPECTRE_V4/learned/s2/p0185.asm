.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sub al, 11
test dl, 114
and rcx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rcx], 7
and cl, al
or dil, -16
test al, -26
adc cl, al
test cl, 78
sub ebx, 35
movsx si, dil
test bl, 87
adc al, -86
adc cl, 6
or al, dl
and rdi, 0b1111111111111 # instrumentation
mov bl, byte ptr [r14 + rdi]
and cl, -101
cmp sil, -100
and rbx, 0b1111111111111 # instrumentation
mov rax, qword ptr [r14 + rbx]
and dl, dl
adc dl, sil
neg dl
xchg rdi, rdx
xor cl, al
cmp al, -1
and rdi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdi], al
cmp al, -44
or al, -88
mov bl, -69
cmp cl, al
cmp rcx, -121
adc esi, 15
or al, dl
and rsi, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rsi], rcx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
