.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
btc word ptr [r14 + rdx], 63
and rcx, 0b1111111111111 # instrumentation
and dl, byte ptr [r14 + rcx]
add al, cl
add al, cl
cmovnl rax, rcx
and rcx, 0b1111111111111 # instrumentation
mov edx, dword ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
movsx ebx, word ptr [r14 + rsi]
test di, ax
and rsi, 0b1111111111111 # instrumentation
imul dword ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
sub cl, byte ptr [r14 + rdi]
or ecx, 39
and rsi, 0b1111111111111 # instrumentation
cmp bx, word ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
cmovnp rcx, qword ptr [r14 + rax]
or bl, dil
sbb cl, dil
and rsi, 0b1111111111111 # instrumentation
movzx edi, word ptr [r14 + rsi]
add esi, -5
neg al
xor eax, edi
movsx rcx, sil
or rbx, 0b1000000000000000000000000000000 # instrumentation
bsr rdx, rbx
and rbx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rbx], si
and rax, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rax], -92
test dl, dil
sub dl, al
or bl, 88
add dl, -94 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovo bx, word ptr [r14 + rax]
or sil, al
bt edi, 55
and rdi, 0b1111111111111 # instrumentation
mov rax, qword ptr [r14 + rdi]
cmovnp si, bx
and rcx, 0b1111111111111 # instrumentation
or ax, word ptr [r14 + rcx]
add dl, -102 # instrumentation
and rdi, 0b1111111111111 # instrumentation
adc dl, byte ptr [r14 + rdi]
and rax, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
cmp edx, dword ptr [r14 + rcx]
add ax, 28666
and rdx, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rdx], 59
xor al, bl
and rbx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rbx], sil
and rbx, 0b1111111111000 # instrumentation
and ebx, 0b111 # instrumentation
lock bts dword ptr [r14 + rbx], ebx
xor al, 29
and rbx, 0b1111111111111 # instrumentation
cmp ecx, dword ptr [r14 + rbx]
add bl, -10 # instrumentation
cmovnbe ebx, edx
and rdi, 0b1111111111111 # instrumentation
and eax, 0b111 # instrumentation
btr dword ptr [r14 + rdi], eax
cmovz rax, rcx
add dl, -94 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovo dx, word ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rbx], esi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
