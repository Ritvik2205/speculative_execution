.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmp ecx, 15
and rax, 0b1111111111000 # instrumentation
lock neg dword ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
bts qword ptr [r14 + rdi], 17
and rdx, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rdx], -68
cmovl rdx, rsi
xor cl, -101
and rcx, 0b1111111111000 # instrumentation
lock inc qword ptr [r14 + rcx]
or cl, 1 # instrumentation
mov ax, 1 # instrumentation
div cl
neg dx
cmovz edx, edx
cmovno ax, ax
not rdx
add bl, 95 # instrumentation
mov al, 60
and rdx, 0b1111111111111 # instrumentation
and edi, dword ptr [r14 + rdx]
movzx di, cl
and rbx, 0b1111111111111 # instrumentation
adc qword ptr [r14 + rbx], 3
and rcx, 0b1111111111111 # instrumentation
movzx edx, word ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rsi], dl
and rdx, 0b1111111111111 # instrumentation
imul byte ptr [r14 + rdx]
movzx rdi, dl
and rcx, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rcx], sil
and rdi, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rdi], bl
and rax, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rax], 5
cmovnb ebx, eax
mul al
and rdi, 0b1111111111111 # instrumentation
mov cl, byte ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdx], dil
and rsi, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rsi], eax
and rdi, 0b1111111111111 # instrumentation
or word ptr [r14 + rdi], 1 # instrumentation
and dx, word ptr [r14 + rdi] # instrumentation
shr dx, 1 # instrumentation
div word ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
cmovnz rax, qword ptr [r14 + rdi]
mov dl, sil
cmovz ebx, ebx
mov dl, cl
and rax, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rax], ebx
cmovs rax, rax
and rbx, 0b1111111111111 # instrumentation
and ecx, dword ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rcx], bl
and rcx, 0b1111111111111 # instrumentation
and si, 0b111 # instrumentation
bts word ptr [r14 + rcx], si
cmovnp eax, ebx
and rdx, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rdx], -109
and rsi, 0b1111111111111 # instrumentation
cmovnbe si, word ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
cmovs rdi, qword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
dec byte ptr [r14 + rbx]
and rsi, 0b1111111111000 # instrumentation
lock neg qword ptr [r14 + rsi]
sbb dl, cl
and rsi, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rsi], eax
and bx, 73
xchg bl, dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
