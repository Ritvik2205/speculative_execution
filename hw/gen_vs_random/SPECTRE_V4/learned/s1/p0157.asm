.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sub al, 127
sub dil, 35
and rbx, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rbx]
and bl, cl
test dl, dil
or dl, sil
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], dil
sub al, cl
sub dl, bl
and rsi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rsi], cl
and bl, al
add dl, sil
mov bl, 29
and cx, -117
test edx, -38580719
test al, 72
sub sil, 71
cmp al, -53
btc rsi, rdi
xchg al, bl
and rdi, 0b1111111111111 # instrumentation
or si, word ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rsi], al
adc bl, 0
sub al, bl
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], bl
cmp al, 115
add bl, al
sub bl, cl
or dil, al
xor al, cl
mov dil, al
test bx, 24072
cmp al, -122
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
