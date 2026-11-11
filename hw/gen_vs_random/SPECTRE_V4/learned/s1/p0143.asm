.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rdi], al
sub al, dil
and ax, -603
or bl, dl
add dil, -61
cmp di, -8
sub al, dl
xchg rdi, rbx
or dl, 71
test dil, -5
cmp al, 105
xor al, cl
and cl, 32
mov al, dl
and rsi, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rsi]
jmp .bb_0.1
.bb_0.1:
sub cx, -114
or dl, dl
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], dl
or dl, 71
and rdi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdi], sil
and bl, al
sub dl, -16
and al, 41
and bl, -119
mov al, dil
sub rax, -1680844889
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
