.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
cmovb rax, qword ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rdx], al
dec bx
and rbx, 0b1111111111000 # instrumentation
lock neg byte ptr [r14 + rbx]
or ax, dx
cmovz dx, dx
imul bl
and rdi, 0b1111111111111 # instrumentation
and dword ptr [r14 + rdi], ebx
or ecx, 1 # instrumentation
and edx, ecx # instrumentation
shr edx, 1 # instrumentation
div ecx
or cl, sil
add edx, 11
add cl, 8 # instrumentation
adc dil, al
and rdi, 0b1111111111111 # instrumentation
mul dword ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
mul word ptr [r14 + rdi]
and ax, 35
imul eax
bts esi, 241
cmp rax, -227205962
and rdi, 0b1111111111111 # instrumentation
and ax, 0b111 # instrumentation
bt word ptr [r14 + rdi], ax
xor dil, dil
imul dx, si
cmovnbe rcx, rsi
or ecx, ebx
and rsi, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rsi], ebx
and rsi, 0b1111111111111 # instrumentation
cmovnp eax, dword ptr [r14 + rsi]
and rax, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rax], cl
and rax, 0b1111111111111 # instrumentation
and qword ptr [r14 + rax], 52
sbb eax, 1081973675
movzx rax, dx
xor ebx, ecx
and rbx, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rbx], ax
and rax, 0b1111111111111 # instrumentation
mov rdx, qword ptr [r14 + rax]
movzx ax, dl
and rdx, 0b1111111111111 # instrumentation
cmovnl bx, word ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
sub rdx, qword ptr [r14 + rax]
cmp bl, sil
and rcx, 0b1111111111111 # instrumentation
adc bl, byte ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
sbb dword ptr [r14 + rsi], 41
and rdi, 0b1111111111111 # instrumentation
movzx ebx, word ptr [r14 + rdi]
mov ebx, 99
and rdx, 0b1111111111111 # instrumentation
btr word ptr [r14 + rdx], 19
and rsi, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rsi], ax
and rax, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rax], 85
bts rsi, rbx
cmp ax, 23131
add al, 5
xchg ax, si
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
