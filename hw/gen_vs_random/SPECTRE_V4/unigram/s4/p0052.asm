.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovno rbx, rsi
and rbx, 0b1111111111111 # instrumentation
add rsi, qword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
test word ptr [r14 + rbx], 42
cmovp rdi, rdi
or rbx, 0b1000000000000000000000000000000 # instrumentation
bsr rbx, rbx
add sil, 91 # instrumentation
adc sil, dl
or sil, sil
and rdx, 0b1111111111111 # instrumentation
or dl, byte ptr [r14 + rdx]
xor edi, 127
btr ax, di
and rax, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rax], 97
movzx cx, dil
mov bl, sil
bt bx, di
cmp al, bl
and rax, 0b1111111111111 # instrumentation
cmovb rbx, qword ptr [r14 + rax]
adc al, al
not rdx
and rbx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rbx], 0b1000000000000000000000000000000 # instrumentation
bsf esi, dword ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
bt word ptr [r14 + rsi], 0
or rdi, rax
and cl, cl
add dl, -17 # instrumentation
and rdi, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rdi], 32
mov cl, dl
cmovz edi, eax
and rbx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rbx], dil
and rdi, 0b1111111111111 # instrumentation
inc byte ptr [r14 + rdi]
cmovnb esi, edx
sub bx, 24
xor cl, 13
and rdx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rdx], 110
adc rcx, rdi
and rdx, 0b1111111111111 # instrumentation
adc qword ptr [r14 + rdx], rdi
and rdi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdi], 0b1000000000000000000000000000000 # instrumentation
bsf eax, dword ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
sub dword ptr [r14 + rsi], esi
xchg di, si
and rsi, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rsi], 7
cmovs rbx, rdx
and rsi, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rsi], rbx
and rdi, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rdi], 77
xor sil, 25
mov sil, 49
and rax, 0b1111111111111 # instrumentation
sbb edx, dword ptr [r14 + rax]
and ax, cx
and eax, -1237519395
and rax, 0b1111111111111 # instrumentation
inc word ptr [r14 + rax]
and rcx, 0b1111111111000 # instrumentation
lock sub dword ptr [r14 + rcx], 24
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
