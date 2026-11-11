.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test cl, -119
and rcx, 0b1111111111111 # instrumentation
xor si, word ptr [r14 + rcx]
add eax, 953442933
sbb al, cl
add bl, bl
test ax, -14473
and rdx, 0b1111111111111 # instrumentation
sbb dword ptr [r14 + rdx], edi
not bl
and rax, 0b1111111111111 # instrumentation
mul byte ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rcx]
and cl, cl
cmovle rax, rsi
not dx
movsx eax, di
and rax, 0b1111111111111 # instrumentation
cmovns esi, dword ptr [r14 + rax]
btr rcx, 134
and rbx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rbx], cl
or bl, dl
mul dil
add rdi, 111
adc eax, -1127383570
and rbx, 0b1111111111000 # instrumentation
lock btc dword ptr [r14 + rbx], 6
mov al, dl
and rdi, 0b1111111111111 # instrumentation
neg qword ptr [r14 + rdi]
and cl, bl
and rcx, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rcx], 2
sbb ebx, esi
sbb al, -14
and rdx, 0b1111111111111 # instrumentation
neg word ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
imul edi, dword ptr [r14 + rbx]
movzx rdi, sil
imul ecx
btc rsi, 77
and rdx, 0b1111111111111 # instrumentation
imul dx, word ptr [r14 + rdx], -68
and rcx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rcx], -47
and rdx, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rdx], ebx
cmovns ecx, edi
and rax, 0b1111111111111 # instrumentation
mov edx, dword ptr [r14 + rax]
test bl, dl
and rdi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdi], 1 # instrumentation
and edx, dword ptr [r14 + rdi] # instrumentation
shr edx, 1 # instrumentation
div dword ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
cmovs ebx, dword ptr [r14 + rsi]
adc cl, al
and rsi, 0b1111111111000 # instrumentation
lock sub dword ptr [r14 + rsi], esi
add al, cl
and rsi, 0b1111111111111 # instrumentation
movsx si, byte ptr [r14 + rsi]
cmovo edx, edx
and rsi, 0b1111111111111 # instrumentation
mov esi, dword ptr [r14 + rsi]
mov edi, 412386591
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
