.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, -20 # instrumentation
adc bl, dl
cmp cl, -105
xor dl, cl
and rcx, 0b1111111111111 # instrumentation
movsx di, byte ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
adc word ptr [r14 + rdi], 78
or rdx, rdi
adc bl, -20
and rbx, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rbx], rax
cmovp rsi, rdx
and rcx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rcx], ecx
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], al
add al, bl
and rbx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rbx], al
and rdx, 0b1111111111111 # instrumentation
cmovo ebx, dword ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdx], 0b1000000000000000000000000000000 # instrumentation
bsf edx, dword ptr [r14 + rdx]
add al, -79 # instrumentation
adc rbx, 11
or rsi, 0b1000000000000000000000000000000 # instrumentation
bsr rsi, rsi
neg bl
test dl, dl
and rdi, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rdi], bl
btc rax, 227
sbb al, 54
cmovno esi, edx
and rbx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rbx], bl
and rsi, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rsi], eax
and rcx, 0b1111111111111 # instrumentation
sbb word ptr [r14 + rcx], bx
imul esi, edi
test edi, -1380439873
and rsi, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rsi]
and rsi, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rsi], di
add rcx, 32
bts di, 30
xor al, 30
bts rsi, rcx
and rsi, 0b1111111111111 # instrumentation
cmovnbe si, word ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
cmovnb dx, word ptr [r14 + rsi]
and rax, 0b1111111111000 # instrumentation
lock not word ptr [r14 + rax]
and rbx, 0b1111111111000 # instrumentation
lock inc qword ptr [r14 + rbx]
sub edx, -122
imul rdx, rsi
and rsi, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rsi], 39
and rdx, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rdx], si
and rax, 0b1111111111111 # instrumentation
movsx cx, byte ptr [r14 + rax]
mul edx
and rcx, 0b1111111111111 # instrumentation
mul dword ptr [r14 + rcx]
sbb cl, 12
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], dil
cmovnb eax, eax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
