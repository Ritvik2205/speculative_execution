.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and dl, bl
imul rsi, rdx, 70
and rbx, 0b1111111111111 # instrumentation
adc cx, word ptr [r14 + rbx]
inc cx
and rsi, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rsi], 110
and rdi, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rdi], ax
and rbx, 0b1111111111111 # instrumentation
cmovnle edx, dword ptr [r14 + rbx]
cmovnbe rdx, rbx
and rdx, 0b1111111111111 # instrumentation
and rax, 0b111 # instrumentation
btc qword ptr [r14 + rdx], rax
imul sil
and rdi, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rdi], edx
test eax, -558243208
and rcx, 0b1111111111111 # instrumentation
cmovl dx, word ptr [r14 + rcx]
or di, ax
or bx, -111
cmp dl, 28
sub bl, 17
sub dil, bl
and rsi, 0b1111111111111 # instrumentation
sub sil, byte ptr [r14 + rsi]
mov rdx, 52
cmovnbe rsi, rax
add bl, -18 # instrumentation
mov rax, rsi
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], dil
add al, 5
and rsi, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rsi], 72
btc dx, 16
imul eax
and rbx, 0b1111111111111 # instrumentation
cmovs si, word ptr [r14 + rbx]
cmovp bx, dx
add sil, al
add edi, eax
cmp ax, 23131
sub bl, bl
adc di, -110
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], sil
add cl, -42 # instrumentation
adc bl, al
and rcx, 0b1111111111111 # instrumentation
cmovo rcx, qword ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
or word ptr [r14 + rdx], 0b1000000000000000 # instrumentation
bsf cx, word ptr [r14 + rdx]
and rbx, 0b1111111111000 # instrumentation
lock btc dword ptr [r14 + rbx], 94
or rax, 0b1000000000000000000000000000000 # instrumentation
bsr rdx, rax
and rbx, 0b1111111111111 # instrumentation
cmovbe di, word ptr [r14 + rbx]
cmovle ebx, esi
and rax, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rax], 97
cmovnz edi, edx
or eax, 0b1000000000000000000000000000000 # instrumentation
bsf ebx, eax
and rcx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rcx], rbx
add rcx, rbx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
