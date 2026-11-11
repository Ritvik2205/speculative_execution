.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor ax, 20236
sub dl, 107
and dl, 24
movzx cx, dl
and rdi, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rdi], cl
test cl, -10
and rax, 0b1111111111111 # instrumentation
or byte ptr [r14 + rax], dl
and rdi, 0b1111111111111 # instrumentation
or ax, word ptr [r14 + rdi]
cmp al, cl
cmp bl, dil
mov al, 124
sub al, 11
movsx cx, bl
cmp al, bl
sub dil, -28
lea ecx, qword ptr [rdx]
or bl, 80
cmp al, -78
dec al
and dil, -120
and rdx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rdx], cl
xor di, bx
sub dl, 107
btc rdi, rbx
cmp dl, 23
test al, dl
and al, 82
and rbx, 0b1111111111111 # instrumentation
mov di, word ptr [r14 + rbx]
cmp rcx, -121
cmp dl, bl
xor al, dil
cmp dl, 45
and bl, 76
adc rax, 519150753
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
