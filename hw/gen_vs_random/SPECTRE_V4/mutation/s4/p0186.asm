.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, -79 # instrumentation
adc rbx, 11
and rdi, 0b1111111111111 # instrumentation
adc word ptr [r14 + rdi], 78
and rbx, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rbx], rax
and rcx, 0b1111111111111 # instrumentation
sbb word ptr [r14 + rcx], bx
and rdi, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rdi], bl
cmovno esi, edx
bts rsi, rcx
add al, bl
and rcx, 0b1111111111111 # instrumentation
mul dword ptr [r14 + rcx]
btc rax, 227
add cl, -20 # instrumentation
adc bl, dl
mul edx
neg bl
sbb al, -43
xor al, -6
and rbx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rbx], bl
cmovnb eax, eax
cmovp rsi, rdx
and rsi, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
cmovnbe si, word ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rbx], al
sbb cl, 40
and rdx, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rdx], si
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], al
test dl, dl
and rsi, 0b1111111111111 # instrumentation
cmovnb dx, word ptr [r14 + rsi]
imul esi, edi
and rbx, 0b1111111111000 # instrumentation
lock inc qword ptr [r14 + rbx]
test edi, -2098143765
and rsi, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rsi], eax
and rsi, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rsi], 39
and rcx, 0b1111111111111 # instrumentation
movsx di, byte ptr [r14 + rcx]
and rcx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rcx], ecx
xor dl, cl
add rcx, 32
and rdx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdx], 0b1000000000000000000000000000000 # instrumentation
bsf edx, dword ptr [r14 + rdx]
or rsi, 0b1000000000000000000000000000000 # instrumentation
bsr rsi, rsi
bts di, 30
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], dil
and rdx, 0b1111111111111 # instrumentation
cmovo ebx, dword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
movsx cx, byte ptr [r14 + rax]
imul rdx, rsi
or rdx, rdi
adc bl, 35
and rax, 0b1111111111000 # instrumentation
lock not word ptr [r14 + rax]
cmp cl, -105
sub edx, -122
and rsi, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rsi], di
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
