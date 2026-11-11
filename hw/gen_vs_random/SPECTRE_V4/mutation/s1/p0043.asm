.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111000 # instrumentation
lock sub dword ptr [r14 + rsi], esi
add bl, bl
test ax, -6584
not bl
adc eax, 1307735127
sbb ebx, esi
and rdi, 0b1111111111111 # instrumentation
neg qword ptr [r14 + rdi]
add eax, 953442933
and rsi, 0b1111111111111 # instrumentation
movsx si, byte ptr [r14 + rsi]
btr rcx, 134
add al, cl
and rax, 0b1111111111111 # instrumentation
cmovns esi, dword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
cmovs ebx, dword ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
mov esi, dword ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
imul dx, word ptr [r14 + rdx], -68
and rax, 0b1111111111111 # instrumentation
mul byte ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rdx], ebx
and cl, cl
and rbx, 0b1111111111111 # instrumentation
imul edi, dword ptr [r14 + rbx]
sbb al, cl
and rdx, 0b1111111111111 # instrumentation
neg word ptr [r14 + rdx]
movsx eax, di
and rdx, 0b1111111111111 # instrumentation
sbb dword ptr [r14 + rdx], edi
sbb al, -14
test cl, 78
movzx rdi, sil
and rdi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdi], 1 # instrumentation
and edx, dword ptr [r14 + rdi] # instrumentation
shr edx, 1 # instrumentation
div dword ptr [r14 + rdi]
and cl, bl
not dx
and rcx, 0b1111111111111 # instrumentation
xor si, word ptr [r14 + rcx]
and rbx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rbx], cl
mov al, dl
cmovo edx, edx
cmovns ecx, edi
cmovle rax, rsi
adc cl, al
and rax, 0b1111111111111 # instrumentation
mov edx, dword ptr [r14 + rax]
or bl, dl
mul dil
and rcx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rcx], -47
test bl, dl
and rcx, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rcx], 2
mov edi, -1866088512
and rbx, 0b1111111111000 # instrumentation
lock btc dword ptr [r14 + rbx], 6
imul ecx
and rcx, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rcx]
btc rsi, 77
add rdi, 111
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
