.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, 80 # instrumentation
mov cl, bl
cmovz si, di
xchg sil, dil
and rdi, 0b1111111111111 # instrumentation
add edi, dword ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rdi], sil
and rsi, 0b1111111111111 # instrumentation
neg qword ptr [r14 + rsi]
and rcx, 0b1111111111000 # instrumentation
lock sbb qword ptr [r14 + rcx], rcx
and rsi, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rsi], 7
and rcx, 0b1111111111111 # instrumentation
add dword ptr [r14 + rcx], -2
cmovnz ecx, eax
imul ax, di
and ax, 13045
and rbx, 0b1111111111111 # instrumentation
imul si, word ptr [r14 + rbx], -72
and rcx, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rcx], 65
and rcx, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rcx], 85
xchg esi, edx
or cl, cl
xor rax, -117
and rdi, 0b1111111111111 # instrumentation
xor bl, byte ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
not word ptr [r14 + rbx]
and cx, di
adc rbx, rdx
and rdi, 0b1111111111111 # instrumentation
cmovnbe bx, word ptr [r14 + rdi]
movzx ecx, cl
and ecx, edx
and rax, 0b1111111111111 # instrumentation
imul byte ptr [r14 + rax]
not bx
and rcx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rcx], dl
cmovl rbx, rsi
add dl, dl
sbb esi, ecx
and rax, 0b1111111111111 # instrumentation
sub word ptr [r14 + rax], cx
and rbx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rbx]
sbb al, -52
and rsi, 0b1111111111111 # instrumentation
movsx rdx, word ptr [r14 + rsi]
imul si, di, -97
and rax, 0b1111111111111 # instrumentation
cmp cl, byte ptr [r14 + rax]
cmovnb esi, ebx
btc rdx, 178
and bl, -119
and rbx, 0b1111111111111 # instrumentation
sub ecx, dword ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
mov word ptr [r14 + rdi], ax
and rcx, 0b1111111111111 # instrumentation
cmovnb rdx, qword ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
sub qword ptr [r14 + rsi], rbx
and rdi, 0b1111111111000 # instrumentation
and si, 0b111 # instrumentation
lock bts word ptr [r14 + rdi], si
sub rcx, -99
imul cx, dx, 98
and rbx, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rbx], dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
