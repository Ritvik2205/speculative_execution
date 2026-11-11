.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -59
cmp al, 116
cmp sil, bl
and rbx, 0b1111111111111 # instrumentation
adc cl, byte ptr [r14 + rbx]
cmp cl, 100
add cl, sil
sub al, 69
and rax, 0b1111111111111 # instrumentation
xor dl, byte ptr [r14 + rax]
sbb ax, 75
xchg rbx, rdi
and rdx, 0b1111111111111 # instrumentation
mov rax, qword ptr [r14 + rdx]
cmp cx, 0
or cl, dl
adc dil, 112
mov al, -114
and rbx, 0b1111111111111 # instrumentation
or di, word ptr [r14 + rbx]
and dil, -120
and al, 100
xor bl, dl
and al, cl
add cl, bl
sbb sil, -124
mov dil, sil
test dl, 114
sub sil, -35
xor ax, 30500
and rdi, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rdi], 29
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
