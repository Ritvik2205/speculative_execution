.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or bx, -33
sbb rbx, 20
and rsi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rsi], sil
and rbx, 0b1111111111000 # instrumentation
and rbx, 0b111 # instrumentation
lock btc qword ptr [r14 + rbx], rbx
or bx, -33
and rax, 0b1111111111111 # instrumentation
adc word ptr [r14 + rax], 20
adc sil, al
and rdi, 0b1111111111111 # instrumentation
adc qword ptr [r14 + rdi], 75
and rdx, 0b1111111111111 # instrumentation
cmovz si, word ptr [r14 + rdx]
bts dx, 26
add dil, al
and rcx, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rcx], dl
and rbx, 0b1111111111111 # instrumentation
sub edi, dword ptr [r14 + rbx]
and rdi, 0b1111111111000 # instrumentation
lock sbb qword ptr [r14 + rdi], 91
and rcx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rcx], esi
and rax, 0b1111111111111 # instrumentation
mov dl, byte ptr [r14 + rax]
imul rax, rcx
cmovnp rdx, rsi
and rax, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rax], bl
and rsi, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rsi], 3
and rbx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rbx], cx
add cl, 101 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovnle esi, dword ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
or word ptr [r14 + rax], -18
and rdi, 0b1111111111111 # instrumentation
add word ptr [r14 + rdi], bx
and rax, 0b1111111111111 # instrumentation
cmp rsi, qword ptr [r14 + rax]
xor cl, -101
cmovnb edx, ebx
cmp rax, -47
and rax, 0b1111111111111 # instrumentation
sub ecx, dword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rax], rbx
xor rdi, -72
cmovbe rcx, rax
test al, dl
mov cl, sil
and rbx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rbx], ebx
and rdi, 0b1111111111111 # instrumentation
imul byte ptr [r14 + rdi]
sbb sil, 24
or cl, -104
add dil, cl
add rdi, 111
adc al, 116
bts edx, ecx
add al, -79 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovno edx, dword ptr [r14 + rax]
sub dil, cl
adc al, dil
and rdx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rdx], 110
and rax, 0b1111111111000 # instrumentation
lock dec word ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
mov ecx, dword ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
