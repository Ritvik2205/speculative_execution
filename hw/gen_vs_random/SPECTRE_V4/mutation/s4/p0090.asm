.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rdx], cx
btc edx, 164
and rax, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rax], 5
movzx rax, di
and rbx, 0b1111111111111 # instrumentation
movsx eax, byte ptr [r14 + rbx]
cmp cl, dl
dec cl
cmp rdi, 28
or cl, cl
bt si, 18
and rsi, 0b1111111111111 # instrumentation
sbb dl, byte ptr [r14 + rsi]
mov ebx, ecx
or rdi, 0b1000000000000000000000000000000 # instrumentation
bsr rdi, rdi
and rdx, 0b1111111111111 # instrumentation
mul dword ptr [r14 + rdx]
add al, 105 # instrumentation
cmovl esi, ecx
and rsi, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rsi], -1772009889
and rsi, 0b1111111111111 # instrumentation
and si, 0b111 # instrumentation
bt word ptr [r14 + rsi], si
add bl, 42 # instrumentation
movsx rdx, bl
cmovnp ax, dx
mov edi, -1866088512
and rcx, 0b1111111111111 # instrumentation
cmovs rsi, qword ptr [r14 + rcx]
and rbx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rbx], bl
inc rax
and rdi, 0b1111111111111 # instrumentation
movsx rsi, word ptr [r14 + rdi]
xor al, -15
and rax, 0b1111111111111 # instrumentation
and byte ptr [r14 + rax], al
and rax, 0b1111111111111 # instrumentation
adc bl, byte ptr [r14 + rax]
and rsi, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rsi], -59
adc bl, sil
and rax, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rax]
cmovbe edx, ecx
movsx eax, sil
or edi, 0b1000000000000000000000000000000 # instrumentation
bsr ebx, edi
and rcx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rcx], 118
and rdx, 0b1111111111111 # instrumentation
and edi, dword ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
imul dword ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
add word ptr [r14 + rdx], 10
or bx, -33
adc bl, -58
and rbx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rbx], 43
and rbx, 0b1111111111111 # instrumentation
neg byte ptr [r14 + rbx]
xor rbx, -99
mov cl, -38
and rbx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rbx], -31
or cx, -74
add dil, -61
imul dx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
