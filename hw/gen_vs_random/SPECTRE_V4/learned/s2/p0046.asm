.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdx], dil
and rsi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rsi], bl
add al, -32
bts eax, 82
test al, 52
cmp edx, 4
sbb eax, 316213929
cmp sil, cl
sbb al, 57
and rcx, 11
and rsi, 0b1111111111111 # instrumentation
xor cl, byte ptr [r14 + rsi]
add bl, al
cmp rax, 40
sbb sil, 24
cmp rbx, -91
and rdx, 0b1111111111111 # instrumentation
imul di, word ptr [r14 + rdx], 72
adc dl, cl
adc bl, cl
xchg rax, rsi
jmp .bb_0.1
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rdi], cl
cmp al, 115
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], al
or rdx, rsi
and rsi, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rsi]
xor al, bl
mov dil, 13
or eax, 1001462340
sbb dil, bl
add sil, dil
sub cl, al
and rdi, 0b1111111111111 # instrumentation
imul si, word ptr [r14 + rdi], 55
test dil, -83
and rbx, 0b1111111111111 # instrumentation
mov cl, byte ptr [r14 + rbx]
sbb al, 57
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
