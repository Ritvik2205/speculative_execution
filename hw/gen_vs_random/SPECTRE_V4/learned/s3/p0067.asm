.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and dx, -107
or bl, cl
xor dil, dil
or rax, 1042095162
and al, -12
add bl, sil
movsx di, dl
xchg dl, dil
and rdi, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rdi]
test al, sil
or ebx, -82
adc bl, sil
cmp al, -1
mov cl, al
sbb al, -39
or bl, bl
mov dl, al
mov bl, cl
adc esi, 43
test ax, -14473
and rbx, 0b1111111111111 # instrumentation
cmovz rdx, qword ptr [r14 + rbx]
xor al, bl
cmp al, -1
xor dil, al
mov al, 124
cmp al, -122
and rcx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rcx], 7
sub al, 29
and rdi, 0b1111111111111 # instrumentation
mov dl, byte ptr [r14 + rdi]
sbb ebx, -54
add dl, bl
and al, 92
and cl, dil
and rsi, 0b1111111111111 # instrumentation
sub cl, byte ptr [r14 + rsi]
xor cl, dl
sbb al, 54
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
