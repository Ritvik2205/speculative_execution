.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rdx], 9
xor dx, 7
and rcx, 0b1111111111111 # instrumentation
mov rdx, qword ptr [r14 + rcx]
or al, al
and bl, -60
or al, al
inc eax
add al, -32
sub di, cx
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], cl
or al, al
test al, 18
dec al
xor al, 30
xor bl, -126
test dil, bl
xor dl, dil
test dl, -102
adc dil, -48
and si, -70
cmp dl, al
sbb dil, sil
and rax, 0b1111111111111 # instrumentation
movsx bx, byte ptr [r14 + rax]
sub dl, 107
bts dx, 96
bt cx, ax
add bl, -59
cmp sil, cl
cmp dil, 53
and rdx, 0b1111111111111 # instrumentation
mov dil, byte ptr [r14 + rdx]
test al, 72
and rbx, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
adc cl, byte ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
