.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test bx, si
cmp rdx, -49
and bx, 59
xchg rdi, rcx
sub bl, -98
cmp dl, -82
test al, 18
and dl, 124
xor dl, -123
xor ax, -29507
or ax, 27604
xor si, -73
and al, 92
cmp cl, bl
sbb cl, 45
and rsi, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rsi]
mov cl, dil
and di, -34
add dl, dl
cmp edx, -95
sub al, 59
sub al, dl
btc rdi, rbx
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], sil
xchg dil, bl
add cl, dil
xor al, -15
and rsi, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rsi], rdi
sub sil, 71
mov al, 7
adc sil, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
