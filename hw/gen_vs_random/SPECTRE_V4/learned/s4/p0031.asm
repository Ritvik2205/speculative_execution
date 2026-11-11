.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or di, ax
cmp rax, 1524061352
and rdi, 0b1111111111111 # instrumentation
xor dil, byte ptr [r14 + rdi]
cmp bx, si
and rax, 0b1111111111111 # instrumentation
cmovo ebx, dword ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
cmovnbe esi, dword ptr [r14 + rcx]
and rdi, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rdi], 78
cmp cl, dl
and rbx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rbx], ax
imul cl
mul dl
and rcx, 0b1111111111111 # instrumentation
neg word ptr [r14 + rcx]
cmovz si, si
xor cl, -54
and rsi, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rsi], 1
cmovp rdi, rbx
and rcx, 0b1111111111111 # instrumentation
movsx rax, word ptr [r14 + rcx]
or dl, 0b1000 # instrumentation
and dl, 0b11111000 # instrumentation
add dl, 11 # instrumentation
cmovbe esi, ecx
sbb eax, 1081973675
and rdx, 0b1111111111111 # instrumentation
and rsi, qword ptr [r14 + rdx]
and rdi, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rdi], ax
adc rbx, 99
cmovnl rax, rax
sub esi, 23
add ecx, 72
and rsi, 0b1111111111111 # instrumentation
btr word ptr [r14 + rsi], 4
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], 0b1000 # instrumentation
and byte ptr [r14 + rsi], 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv word ptr [r14 + rsi]
cmp dil, -124
sbb eax, -984782068
movzx rax, sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
