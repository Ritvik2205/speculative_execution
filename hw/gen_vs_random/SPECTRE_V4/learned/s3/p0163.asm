.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, -21 # instrumentation
adc rdi, 5
test eax, -558243208
mov dl, dl
and rdx, 0b1111111111111 # instrumentation
and dl, byte ptr [r14 + rdx]
xchg cx, dx
movsx si, al
add cl, 119 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovl rdx, qword ptr [r14 + rax]
or rcx, 0b1000000000000000000000000000000 # instrumentation
bsr rbx, rcx
or edx, 0b1000000000000000000000000000000 # instrumentation
bsr edx, edx
and rsi, 0b1111111111111 # instrumentation
and word ptr [r14 + rsi], si
imul ecx
and rsi, 0b1111111111111 # instrumentation
cmovp edi, dword ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
sub qword ptr [r14 + rdx], 57
and rdi, 0b1111111111111 # instrumentation
sbb dword ptr [r14 + rdi], 111
and rcx, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rcx], -12
cmp cl, 56
and rdx, 0b1111111111111 # instrumentation
cmovnp rbx, qword ptr [r14 + rdx]
and rdx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rdx], 45
btc esi, 28
and rbx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rbx], 0b1000000000000000000000000000000 # instrumentation
bsf rcx, qword ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rdx], edi
not si
and rdi, 0b1111111111111 # instrumentation
xor cl, byte ptr [r14 + rdi]
and rcx, -102
sub al, al
imul bx
test rdi, -1876639003
adc bx, -89
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], 0b1000 # instrumentation
and byte ptr [r14 + rsi], 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv word ptr [r14 + rsi]
and bl, sil
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], 4
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], 0b1000000000000000 # instrumentation
bsr di, word ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
movsx edx, word ptr [r14 + rdi]
sub ecx, ebx
and rdi, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rdi], 37
and rax, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rax], 97
or dl, 56
adc bl, al
and rcx, 0b1111111111111 # instrumentation
sbb bx, word ptr [r14 + rcx]
cmp al, al
or dl, bl
mov al, 27
sbb al, -101
cmp rax, -120490246
and rdi, 0b1111111111000 # instrumentation
and bx, 0b111 # instrumentation
lock bts word ptr [r14 + rdi], bx
cmovl rdi, rax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
