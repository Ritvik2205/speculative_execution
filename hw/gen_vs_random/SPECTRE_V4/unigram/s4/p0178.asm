.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
imul dx
add edi, ebx
mov eax, ebx
and bl, bl
and rdx, 0b1111111111111 # instrumentation
and ax, 0b111 # instrumentation
btr word ptr [r14 + rdx], ax
and rdi, 0b1111111111000 # instrumentation
lock btr dword ptr [r14 + rdi], 35
and rdx, 0b1111111111111 # instrumentation
cmovz edi, dword ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
bts qword ptr [r14 + rdi], 48
xor rax, rbx
add bl, bl
sub dl, al
and rax, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rax]
and rax, 0b1111111111000 # instrumentation
lock neg dword ptr [r14 + rax]
add bl, -40 # instrumentation
and rcx, 0b1111111111111 # instrumentation
adc bl, byte ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
and ecx, 0b111 # instrumentation
bts dword ptr [r14 + rbx], ecx
or edi, 0b1000000000000000000000000000000 # instrumentation
bsr eax, edi
xor dl, -66
add rsi, 68
and rax, 0b1111111111000 # instrumentation
and cx, 0b111 # instrumentation
lock btc word ptr [r14 + rax], cx
and rax, 0b1111111111111 # instrumentation
sub word ptr [r14 + rax], di
and rax, 0b1111111111111 # instrumentation
cmovnb cx, word ptr [r14 + rax]
bts dx, 96
and rdx, 0b1111111111111 # instrumentation
sbb rax, qword ptr [r14 + rdx]
bts di, 72
and rdx, 0b1111111111000 # instrumentation
xchg dword ptr [r14 + rdx], ecx
sbb cl, 12
and sil, sil
mov rcx, rsi
and rax, 0b1111111111111 # instrumentation
mov word ptr [r14 + rax], ax
and rax, 0b1111111111111 # instrumentation
test word ptr [r14 + rax], di
and rcx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rcx], dx
and rdi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdi], cl
and rax, 0b1111111111111 # instrumentation
add byte ptr [r14 + rax], bl
cmp cl, al
and rax, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rax], dl
xor sil, 83
imul edx
and rsi, 0b1111111111111 # instrumentation
add qword ptr [r14 + rsi], rax
sub dl, 107
mov ax, si
adc esi, 87
cmovnp ecx, edx
and rax, 0b1111111111111 # instrumentation
movsx rax, word ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rax], 42
adc al, sil
cmovnz ebx, ebx
and rcx, 0b1111111111111 # instrumentation
sbb cx, word ptr [r14 + rcx]
xor rdi, -72
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
