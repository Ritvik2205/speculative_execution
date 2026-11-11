.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rax], 3
and rcx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rcx], 87
and rax, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rax], dl
imul dx
and esi, 55
sub rax, rdx
and rdi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdi], 43
sub bx, 75
and rax, 0b1111111111111 # instrumentation
and word ptr [r14 + rax], di
sub bl, cl
and rcx, 0b1111111111000 # instrumentation
lock neg byte ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
mov rax, qword ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
cmovns eax, dword ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
xor rsi, qword ptr [r14 + rcx]
mov ecx, edx
xchg rax, rdx
cmovo rax, rdx
add dl, 56 # instrumentation
cmovle rbx, rdx
not di
and rsi, 0b1111111111111 # instrumentation
imul dword ptr [r14 + rsi]
add sil, 110
and rdx, 0b1111111111111 # instrumentation
and ax, 0b111 # instrumentation
bt word ptr [r14 + rdx], ax
or dl, cl
adc cl, 13
imul cl
neg edi
cmovb esi, esi
and rsi, 0b1111111111111 # instrumentation
and rcx, qword ptr [r14 + rsi]
btc ecx, 10
and rdx, 0b1111111111111 # instrumentation
cmovnz ax, word ptr [r14 + rdx]
and rbx, 0b1111111111000 # instrumentation
and rsi, 0b111 # instrumentation
lock btc qword ptr [r14 + rbx], rsi
and rbx, 0b1111111111111 # instrumentation
sbb dl, byte ptr [r14 + rbx]
and sil, bl
adc edx, 62
and rax, 0b1111111111111 # instrumentation
and word ptr [r14 + rax], di
cmp dl, 69
add edx, edi
imul sil
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], 69
inc ecx
cmovns edx, ecx
and rax, 0b1111111111111 # instrumentation
and rdi, qword ptr [r14 + rax]
cmovle rsi, rbx
and rdi, 0b1111111111111 # instrumentation
or dil, byte ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
and dl, byte ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rsi], -42
or sil, 1 # instrumentation
mov ax, 1 # instrumentation
div sil
sub dl, 43
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
