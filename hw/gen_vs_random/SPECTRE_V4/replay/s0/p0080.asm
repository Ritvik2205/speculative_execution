.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, cl
add rdi, 111
mov al, dl
cmovns ecx, edi
adc eax, 1019803307
mov edi, 412386591
and rsi, 0b1111111111111 # instrumentation
movsx si, byte ptr [r14 + rsi]
btc rsi, 77
and rdi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdi], 1 # instrumentation
and edx, dword ptr [r14 + rdi] # instrumentation
shr edx, 1 # instrumentation
div dword ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
imul dx, word ptr [r14 + rdx], -68
and rdi, 0b1111111111111 # instrumentation
neg qword ptr [r14 + rdi]
movzx rdi, sil
and cl, bl
btr rcx, 134
not dx
adc cl, al
imul ecx
and rdx, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rdx], ebx
and rbx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rbx], cl
and rcx, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rcx], 2
and cl, cl
not bl
and rcx, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
mov esi, dword ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
xor si, word ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rcx], 19
sbb al, cl
and rdx, 0b1111111111111 # instrumentation
sbb dword ptr [r14 + rdx], edi
movsx eax, di
sbb ebx, esi
add bl, bl
and rax, 0b1111111111111 # instrumentation
cmovns esi, dword ptr [r14 + rax]
cmovle rax, rsi
or bl, dl
and rsi, 0b1111111111111 # instrumentation
cmovs ebx, dword ptr [r14 + rsi]
cmovo edx, edx
test cl, -10
add eax, 953442933
test bl, dl
and rax, 0b1111111111111 # instrumentation
mov edx, dword ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
neg word ptr [r14 + rdx]
and rbx, 0b1111111111000 # instrumentation
lock btc dword ptr [r14 + rbx], 6
sbb al, 31
and rbx, 0b1111111111111 # instrumentation
imul edi, dword ptr [r14 + rbx]
mul dil
and rsi, 0b1111111111000 # instrumentation
lock sub dword ptr [r14 + rsi], esi
and rax, 0b1111111111111 # instrumentation
mul byte ptr [r14 + rax]
test ax, -14473
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
