.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
imul rdi
add al, 122 # instrumentation
cmovns edx, ebx
and rax, 0b1111111111111 # instrumentation
imul dword ptr [r14 + rax]
mov rbx, 9101099553822202722
cmovno edi, edx
neg bl
and rsi, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rsi], 84
cmovl rax, rcx
movsx esi, dil
add eax, -1796699558
setnbe cl
and rdi, 0b1111111111111 # instrumentation
sub al, byte ptr [r14 + rdi]
and rsi, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rsi], bx
btc eax, edx
and rdx, 0b1111111111000 # instrumentation
and rbx, 0b111 # instrumentation
lock bts qword ptr [r14 + rdx], rbx
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], 35
mov bl, 67
and rdx, 0b1111111111111 # instrumentation
cmovnz edx, dword ptr [r14 + rdx]
xchg rcx, rax
and rdi, 0b1111111111111 # instrumentation
cmovnbe esi, dword ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
sub ax, word ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
and dx, 0b111 # instrumentation
btr word ptr [r14 + rdi], dx
and rsi, 0b1111111111111 # instrumentation
and al, byte ptr [r14 + rsi]
sub cl, cl
cmovnbe dx, ax
and rdx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rdx], al
add ebx, 3
and rdx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rdx], si
and rsi, 0b1111111111000 # instrumentation
lock neg word ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
cmovnp edx, dword ptr [r14 + rcx]
btc ebx, 94
cmp al, bl
and rdi, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rdi], sil
and rcx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rcx], 2
or ecx, 1 # instrumentation
and edx, ecx # instrumentation
shr edx, 1 # instrumentation
div ecx
and rsi, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rsi]
and rax, 69
mov bx, -31043
and rax, 0b1111111111000 # instrumentation
lock bts qword ptr [r14 + rax], 0
or cl, 1 # instrumentation
mov ax, 1 # instrumentation
div cl
add cl, 122 # instrumentation
cmovz rdx, rsi
and rax, 0b1111111111111 # instrumentation
cmovnl rcx, qword ptr [r14 + rax]
btc dx, 119
and rdx, 0b1111111111000 # instrumentation
lock btr word ptr [r14 + rdx], 35
cmovl rdi, rcx
or rsi, 0b1000000000000000000000000000000 # instrumentation
bsf rdx, rsi
and rbx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rbx], 0b1000000000000000000000000000000 # instrumentation
bsr rax, qword ptr [r14 + rbx]
bt ebx, 228
sbb dl, bl
and rcx, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
