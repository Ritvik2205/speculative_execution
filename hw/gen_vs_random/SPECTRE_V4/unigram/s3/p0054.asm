.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
and word ptr [r14 + rax], si
and rax, 0b1111111111000 # instrumentation
lock adc dword ptr [r14 + rax], edx
btc si, di
sub cl, 116
and rsi, 0b1111111111111 # instrumentation
and sil, byte ptr [r14 + rsi]
inc eax
and rax, 0b1111111111111 # instrumentation
sbb ebx, dword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
adc bl, byte ptr [r14 + rsi]
btc eax, 25
cmovnz ecx, eax
and rcx, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rcx], al
and rsi, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rsi], 2
and rdx, 0b1111111111111 # instrumentation
cmovo rdx, qword ptr [r14 + rdx]
and rdi, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rdi], dx
sub bl, 17
cmovnl rcx, rcx
or ecx, 1 # instrumentation
and edx, ecx # instrumentation
shr edx, 1 # instrumentation
div ecx
or ecx, 1 # instrumentation
and edx, ecx # instrumentation
shr edx, 1 # instrumentation
div ecx
and rcx, 0b1111111111111 # instrumentation
test word ptr [r14 + rcx], bx
and rax, 0b1111111111000 # instrumentation
lock neg word ptr [r14 + rax]
and rdx, 0b1111111111000 # instrumentation
lock bts qword ptr [r14 + rdx], 97
xor cl, bl
and rsi, 0b1111111111111 # instrumentation
mov edi, dword ptr [r14 + rsi]
imul cl
and rdi, 0b1111111111111 # instrumentation
sub dword ptr [r14 + rdi], eax
add cl, -21 # instrumentation
adc rbx, 85
cmovp ecx, eax
and bl, 26
mul edx
and rdx, 0b1111111111000 # instrumentation
lock btr word ptr [r14 + rdx], 33
and rsi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rsi], 78
test cl, al
and rsi, 0b1111111111111 # instrumentation
and dword ptr [r14 + rsi], 64
or dx, 0b1000 # instrumentation
and dl, 0b11111000 # instrumentation
and rdx, 0b1111111111000 # instrumentation
lock neg word ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rbx], ecx
cmovnb eax, edx
and rax, 0b1111111111111 # instrumentation
neg word ptr [r14 + rax]
bts esi, 241
and bl, cl
and rdi, 0b1111111111111 # instrumentation
movsx edx, word ptr [r14 + rdi]
sbb al, 32
and rbx, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rbx], 84
and rsi, 0b1111111111111 # instrumentation
add ebx, dword ptr [r14 + rsi]
sub bl, 17
and rax, 0b1111111111111 # instrumentation
or cx, word ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
movsx rdx, word ptr [r14 + rbx]
and rdx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rdx], 67
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
