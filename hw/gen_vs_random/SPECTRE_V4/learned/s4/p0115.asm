.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
xor eax, dword ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
xor sil, byte ptr [r14 + rdx]
test al, -85
sub rbx, 101
or al, dl
and bl, al
inc dl
sub dil, 65
and cx, -117
sub al, 26
adc sil, cl
cmp rax, -1547540200
and dil, -23
sbb dil, 84
and rdx, 0b1111111111111 # instrumentation
cmp sil, byte ptr [r14 + rdx]
add dil, bl
test cx, 19367
and dl, al
xor dil, 37
add bl, dil
sub dil, bl
mov cl, -38
and rdx, 0b1111111111111 # instrumentation
xor cl, byte ptr [r14 + rdx]
or eax, -1213318393
and rsi, 0b1111111111111 # instrumentation
or bx, word ptr [r14 + rsi]
and al, dl
cmp al, 105
sub al, 96
or al, 27
dec al
test dx, 28394
sub rax, 120
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
