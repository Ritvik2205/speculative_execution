.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and cl, bl
test bl, dl
and rdi, 0b1111111111111 # instrumentation
neg qword ptr [r14 + rdi]
and cl, cl
and rax, 0b1111111111111 # instrumentation
mul byte ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rdx], ebx
not bl
mul dil
sbb al, 66
and rdx, 0b1111111111111 # instrumentation
sbb dword ptr [r14 + rdx], edi
and rdx, 0b1111111111111 # instrumentation
neg word ptr [r14 + rdx]
and rbx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rbx], cl
add eax, 1936378991
sbb al, cl
and rdi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdi], 1 # instrumentation
and edx, dword ptr [r14 + rdi] # instrumentation
shr edx, 1 # instrumentation
div dword ptr [r14 + rdi]
mov edi, -1866088512
and rsi, 0b1111111111111 # instrumentation
movsx si, byte ptr [r14 + rsi]
btr rcx, 134
and rcx, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rcx], 2
cmovle rax, rsi
add al, cl
and rcx, 0b1111111111111 # instrumentation
xor si, word ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
imul edi, dword ptr [r14 + rbx]
add bl, bl
btc rsi, 36
adc eax, 1019803307
movsx eax, di
and rsi, 0b1111111111111 # instrumentation
mov esi, dword ptr [r14 + rsi]
not dx
and rsi, 0b1111111111111 # instrumentation
cmovs ebx, dword ptr [r14 + rsi]
and rbx, 0b1111111111000 # instrumentation
lock btc dword ptr [r14 + rbx], 6
test ax, -14473
add rdi, 111
and rdx, 0b1111111111111 # instrumentation
imul dx, word ptr [r14 + rdx], -68
or bl, dl
cmovo edx, edx
sbb ebx, esi
and rax, 0b1111111111111 # instrumentation
cmovns esi, dword ptr [r14 + rax]
adc cl, al
imul ecx
mov al, dl
movzx rdi, sil
test cl, -10
and rcx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rcx], -47
and rax, 0b1111111111111 # instrumentation
mov edx, dword ptr [r14 + rax]
cmovns ecx, edi
and rsi, 0b1111111111000 # instrumentation
lock sub dword ptr [r14 + rsi], esi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
