.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or dx, 0b1000000000000000 # instrumentation
bsr dx, dx
and rsi, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rsi], di
sub cl, al
or cl, bl
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], cl
and rax, 0b1111111111111 # instrumentation
and rbx, 0b111 # instrumentation
bts qword ptr [r14 + rax], rbx
adc ecx, ebx
adc sil, 111
and cl, 32
or al, cl
imul dx, ax, -115
and dx, dx
cmp cl, 100
sbb al, 31
cmovns di, cx
and rdx, 0b1111111111000 # instrumentation
lock inc dword ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rdx], esi
cmovnbe esi, ebx
adc rsi, rcx
and rdi, 0b1111111111111 # instrumentation
movzx rdi, word ptr [r14 + rdi]
xor cl, bl
and rsi, 0b1111111111111 # instrumentation
cmovs di, word ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
xor dl, byte ptr [r14 + rax]
cmp al, cl
and rdx, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rdx], bl
and rsi, 0b1111111111111 # instrumentation
and word ptr [r14 + rsi], 25
and rdx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdx], dl
mov ecx, ebx
and rax, 0b1111111111111 # instrumentation
or qword ptr [r14 + rax], 118
and rcx, 0b1111111111111 # instrumentation
and dl, byte ptr [r14 + rcx]
or al, -19
and rax, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rax], 0
xor al, dl
and rax, 0b1111111111111 # instrumentation
cmovnl rsi, qword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
btc word ptr [r14 + rsi], 7
cmovb rax, rsi
and rdx, 0b1111111111111 # instrumentation
cmovnbe bx, word ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
or edi, dword ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
imul si, word ptr [r14 + rbx], -112
and rbx, 0b1111111111111 # instrumentation
mov rax, qword ptr [r14 + rbx]
imul dil
adc rax, 519150753
and rcx, 0b1111111111111 # instrumentation
imul si, word ptr [r14 + rcx], -32
and rcx, 0b1111111111111 # instrumentation
neg dword ptr [r14 + rcx]
sbb ax, 18812
and ax, 25163
xchg rbx, rdx
and rax, 0b1111111111111 # instrumentation
or word ptr [r14 + rax], 1 # instrumentation
and dx, word ptr [r14 + rax] # instrumentation
shr dx, 1 # instrumentation
div word ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
