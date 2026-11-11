.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rsi], dl
and rdx, 0b1111111111000 # instrumentation
lock adc dword ptr [r14 + rdx], edx
and rsi, 0b1111111111111 # instrumentation
imul rax, qword ptr [r14 + rsi]
and rdi, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rdi], dl
and rcx, 0b1111111111000 # instrumentation
and dx, 0b111 # instrumentation
lock btc word ptr [r14 + rcx], dx
and rbx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rbx], al
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], dil
cmp sil, -100
adc eax, 1307735127
xchg dl, dl
and rax, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rax], 1
sub dil, -40
cmovnb edi, esi
add dl, -55 # instrumentation
cmovnbe edi, eax
cmp rcx, -121
and rax, 0b1111111111000 # instrumentation
and rbx, 0b111 # instrumentation
lock btc qword ptr [r14 + rax], rbx
and rbx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rbx], cl
add cl, -118 # instrumentation
sbb rbx, 27
and rax, 0b1111111111111 # instrumentation
cmovnb di, word ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rdx], al
xor dil, -23
adc ax, 29444
and rdi, 0b1111111111111 # instrumentation
or word ptr [r14 + rdi], -3
and rbx, 0b1111111111111 # instrumentation
imul si, word ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rbx], edi
sub dl, al
xor dil, bl
and rax, 0b1111111111111 # instrumentation
cmovnbe edx, dword ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rcx], dil
add al, -96 # instrumentation
and rax, 0b1111111111111 # instrumentation
mov ecx, dword ptr [r14 + rax]
add sil, 3
adc bl, -58
and rax, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
cmovp edx, dword ptr [r14 + rdi]
or dl, dl
bt eax, 103
sbb sil, -124
and rbx, 0b1111111111111 # instrumentation
imul ecx, dword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
adc word ptr [r14 + rbx], -101
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], 19
btc rbx, rsi
xor rax, rsi
and rdi, 0b1111111111111 # instrumentation
and edi, 0b111 # instrumentation
btc dword ptr [r14 + rdi], edi
and rsi, 0b1111111111111 # instrumentation
cmovp ebx, dword ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
cmovnz rdx, qword ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
movsx si, byte ptr [r14 + rbx]
cmovnle di, dx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
