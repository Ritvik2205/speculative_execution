.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
cmovnp rcx, qword ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
movzx cx, byte ptr [r14 + rcx]
and rax, 0b1111111111000 # instrumentation
and ecx, 0b111 # instrumentation
lock bts dword ptr [r14 + rax], ecx
and rdx, 0b1111111111111 # instrumentation
mul byte ptr [r14 + rdx]
imul cl
and rsi, 0b1111111111111 # instrumentation
mov edx, dword ptr [r14 + rsi]
cmovnbe bx, si
and rcx, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rcx], dil
xor ebx, 25
imul rsi, rax
and rdx, 0b1111111111111 # instrumentation
mov rdx, qword ptr [r14 + rdx]
or dl, 0b1000 # instrumentation
and dl, 0b11111000 # instrumentation
add al, -10 # instrumentation
mov ax, 51
and bl, 26
btc bx, ax
xchg rbx, rcx
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], al
test edx, 573099753
and rdi, 0b1111111111111 # instrumentation
and esi, 0b111 # instrumentation
btc dword ptr [r14 + rdi], esi
and rax, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rax], dil
cmovle ecx, esi
and rsi, 0b1111111111111 # instrumentation
and rsi, 0b111 # instrumentation
bt qword ptr [r14 + rsi], rsi
and rax, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rax], rbx
xchg rbx, rsi
and rdi, 0b1111111111000 # instrumentation
lock neg word ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
cmovnb si, word ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rcx], 1 # instrumentation
and edx, dword ptr [r14 + rcx] # instrumentation
shr edx, 1 # instrumentation
div dword ptr [r14 + rcx]
add al, 118
and rdx, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rdx], bl
and rbx, 0b1111111111111 # instrumentation
and bl, byte ptr [r14 + rbx]
add bl, 110 # instrumentation
movsx cx, bl
imul dx
and rdi, 0b1111111111111 # instrumentation
mul dword ptr [r14 + rdi]
and rdx, 97
add cl, 32
and rdx, 0b1111111111000 # instrumentation
and ecx, 0b111 # instrumentation
lock bts dword ptr [r14 + rdx], ecx
or bl, cl
and rdi, 0b1111111111111 # instrumentation
and word ptr [r14 + rdi], 39
btc dx, 119
and rcx, 0b1111111111111 # instrumentation
imul rax, qword ptr [r14 + rcx], 50
cmp sil, 88
sbb bx, 13
sub dl, 43
inc edi
or ecx, 1 # instrumentation
and edx, ecx # instrumentation
shr edx, 1 # instrumentation
div ecx
and rax, 0b1111111111111 # instrumentation
sub word ptr [r14 + rax], dx
xor cl, dil
sub rcx, 54
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
