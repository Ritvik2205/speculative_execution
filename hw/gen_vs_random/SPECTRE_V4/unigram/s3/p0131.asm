.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
mul esi
dec bl
bt ecx, edi
and rax, 0b1111111111111 # instrumentation
mul word ptr [r14 + rax]
movzx ax, dl
cmovnb edx, edi
cmovp rsi, rbx
sub eax, 2
and rdi, 0b1111111111111 # instrumentation
cmovns ebx, dword ptr [r14 + rdi]
test dl, dl
and rdx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdx], ebx
and rcx, 0b1111111111000 # instrumentation
lock sbb qword ptr [r14 + rcx], rax
and rsi, 0b1111111111111 # instrumentation
cmovnl rbx, qword ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
cmovnb esi, dword ptr [r14 + rdi]
add bl, -72
add si, 4
xor dil, 51
and rcx, 0b1111111111111 # instrumentation
cmovno rdi, qword ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rbx], 69
xor ax, cx
and rdi, 0b1111111111111 # instrumentation
mov edx, dword ptr [r14 + rdi]
sub dil, al
or rsi, 0b1000000000000000000000000000000 # instrumentation
bsf rdx, rsi
and rax, 0b1111111111111 # instrumentation
cmovo edx, dword ptr [r14 + rax]
cmp rdx, 69
add cl, cl
or ebx, 98
cmovnz di, dx
and rcx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rcx], al
dec rsi
and rax, 0b1111111111111 # instrumentation
not byte ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
and rbx, 0b111 # instrumentation
bt qword ptr [r14 + rbx], rbx
xor edi, esi
bts edx, 17
and rax, 0b1111111111111 # instrumentation
sub cl, byte ptr [r14 + rax]
imul rbx
cmovnbe di, dx
and rdi, 0b1111111111111 # instrumentation
or word ptr [r14 + rdi], 0b1000000000000000 # instrumentation
bsf di, word ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
cmp rbx, qword ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
sub dil, byte ptr [r14 + rcx]
test cl, dil
and rsi, 0b1111111111111 # instrumentation
and dword ptr [r14 + rsi], 64
not rcx
and rsi, 0b1111111111111 # instrumentation
imul dword ptr [r14 + rsi]
xor sil, 56
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], bl
or ecx, 1 # instrumentation
and edx, ecx # instrumentation
shr edx, 1 # instrumentation
div ecx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
