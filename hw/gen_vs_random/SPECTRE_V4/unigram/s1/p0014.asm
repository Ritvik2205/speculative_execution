.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test dl, dl
and rdx, 0b1111111111111 # instrumentation
sub eax, dword ptr [r14 + rdx]
movzx ebx, al
and rbx, 0b1111111111111 # instrumentation
cmp edx, dword ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
or word ptr [r14 + rdi], 72
movsx ebx, dl
or dl, 1 # instrumentation
add dl, -122 # instrumentation
cmovnle esi, edi
and rdx, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rdx], 64
and rdx, 0b1111111111111 # instrumentation
cmovnl ax, word ptr [r14 + rdx]
and rdx, 0b1111111111000 # instrumentation
lock inc qword ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rcx], di
or rcx, rdi
and rax, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rax], dil
or ebx, 1 # instrumentation
and edx, ebx # instrumentation
shr edx, 1 # instrumentation
div ebx
cmp dx, 77
and rdi, 0b1111111111111 # instrumentation
and qword ptr [r14 + rdi], rdx
sbb dl, -99
and rsi, 0b1111111111111 # instrumentation
inc word ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], -114
or esi, 0b1000000000000000000000000000000 # instrumentation
bsf eax, esi
and rax, 0b1111111111111 # instrumentation
cmp edi, dword ptr [r14 + rax]
and rcx, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rcx], cx
sbb dl, cl
mul dl
and rcx, 0b1111111111111 # instrumentation
cmp eax, dword ptr [r14 + rcx]
xchg eax, esi
or dl, 0b1000 # instrumentation
and dl, 0b11111000 # instrumentation
add dl, 11 # instrumentation
cmovbe edx, ecx
and rbx, 0b1111111111111 # instrumentation
cmovs rdx, qword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rbx], bl
and rcx, 0b1111111111111 # instrumentation
sbb edx, dword ptr [r14 + rcx]
cmp dl, cl
and rbx, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rbx], 90
sbb bl, 57
add bl, -10 # instrumentation
cmovnbe ebx, esi
and rax, 0b1111111111111 # instrumentation
and al, byte ptr [r14 + rax]
or dil, dl
and cl, dil
xor dil, al
or sil, 1 # instrumentation
mov ax, 1 # instrumentation
div sil
sub edi, eax
and rdi, 0b1111111111111 # instrumentation
mul dword ptr [r14 + rdi]
sub si, 10
and rdx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rdx], 1
cmovle rbx, rdx
sub ecx, esi
and rdx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rdx], -31428
cmp dx, 16
and rdi, 0b1111111111111 # instrumentation
and word ptr [r14 + rdi], si
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
