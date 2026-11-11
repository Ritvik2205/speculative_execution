.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rsi], 31
or di, 0b1000000000000000 # instrumentation
bsf si, di
add al, 27 # instrumentation
sbb ecx, edi
sbb al, sil
and rdi, 0b1111111111111 # instrumentation
imul dword ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
and word ptr [r14 + rdi], di
adc edi, 22
and rdx, 0b1111111111111 # instrumentation
add edi, dword ptr [r14 + rdx]
setnz bl
xchg si, dx
and rdx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rdx], al
imul ax
inc al
and rdx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rdx], edi
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], al
and rcx, 0b1111111111111 # instrumentation
add dword ptr [r14 + rcx], -71
and rdx, 0b1111111111111 # instrumentation
sub word ptr [r14 + rdx], 124
cmovs rdi, rbx
and rcx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rcx], eax
neg cx
and rcx, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rcx]
add dil, dil
and rcx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rcx], 78
and rcx, -102
and rsi, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rsi], 84
and rbx, 0b1111111111111 # instrumentation
cmovns rbx, qword ptr [r14 + rbx]
lea rcx, qword ptr [rdx + rsi + 61]
and rdx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rdx], ax
and rax, 0b1111111111111 # instrumentation
cmovnbe cx, word ptr [r14 + rax]
add sil, 26
and rax, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rax], -92
cmovnp rsi, rsi
add dl, -99 # instrumentation
not eax
dec dl
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], 0b1000000000000000 # instrumentation
bsf ax, word ptr [r14 + rsi]
test rcx, -2118888343
adc al, dl
test edi, -1249897727
and rcx, 0b1111111111111 # instrumentation
cmovns bx, word ptr [r14 + rcx]
xchg bl, sil
cmp bl, 13
cmp ax, -15409
test si, bx
and rax, 0b1111111111111 # instrumentation
movsx rdi, byte ptr [r14 + rax]
and rbx, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rbx], si
or ecx, 1 # instrumentation
and edx, ecx # instrumentation
shr edx, 1 # instrumentation
div ecx
add bl, 38 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovb ax, word ptr [r14 + rbx]
bts edx, edx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
