.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
bts di, 30
imul rdx, rsi
add cl, -20 # instrumentation
adc bl, dl
xor al, 23
xor dl, cl
and rbx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rbx], al
and rdx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdx], 0b1000000000000000000000000000000 # instrumentation
bsf edx, dword ptr [r14 + rdx]
and rbx, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rbx], rax
neg bl
test dl, dl
or rdx, rdi
and rax, 0b1111111111000 # instrumentation
lock not word ptr [r14 + rax]
add al, -79 # instrumentation
adc rbx, 11
add al, bl
and rsi, 0b1111111111111 # instrumentation
cmovnb dx, word ptr [r14 + rsi]
or rsi, 0b1000000000000000000000000000000 # instrumentation
bsr rsi, rsi
and rcx, 0b1111111111111 # instrumentation
sbb word ptr [r14 + rcx], bx
sbb cl, 127
and rsi, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rsi], di
and rsi, 0b1111111111111 # instrumentation
cmovnbe si, word ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
mul dword ptr [r14 + rcx]
and rbx, 0b1111111111000 # instrumentation
lock inc qword ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rsi], 39
and rsi, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rsi], eax
and rdi, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rdi], bl
and rbx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rbx], bl
and rdx, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rdx], si
cmovnb eax, eax
and rsi, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rsi]
cmovp rsi, rdx
sbb al, 31
btc rax, 124
and rdx, 0b1111111111111 # instrumentation
cmovo ebx, dword ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
adc word ptr [r14 + rdi], 78
adc bl, -20
bts rsi, rcx
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], dil
and rcx, 0b1111111111111 # instrumentation
movsx di, byte ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
movsx cx, byte ptr [r14 + rax]
imul esi, edi
cmp cl, -105
mul edx
cmovno esi, edx
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], al
and rcx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rcx], ecx
test edi, 2142010790
add rcx, 32
sub edx, -122
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
