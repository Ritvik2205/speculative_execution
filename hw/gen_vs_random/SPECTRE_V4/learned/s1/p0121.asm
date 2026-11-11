.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rbx], dl
test al, 57
and rcx, 0b1111111111111 # instrumentation
or bl, byte ptr [r14 + rcx]
sbb sil, 24
and cl, sil
cmp rbx, rdx
adc al, 41
add cl, dl
and al, dil
and rdx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdx], bl
and rax, 0b1111111111111 # instrumentation
or byte ptr [r14 + rax], sil
not dl
neg rsi
xor ax, 45
and rax, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rax], 5
adc cl, sil
add dl, bl
and rbx, 0b1111111111111 # instrumentation
sub al, byte ptr [r14 + rbx]
sbb al, 43
or cl, bl
or cl, -55
sbb al, 66
test dl, -102
and dil, sil
cmp cl, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
