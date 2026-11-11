.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rbx], -87
not di
cmovnz ebx, edx
sub cl, -119
add dl, 29 # instrumentation
cmovnl rdi, rbx
xor bl, cl
and eax, esi
and rax, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rax], 3
and rax, 0b1111111111111 # instrumentation
and qword ptr [r14 + rax], -115
and rsi, 0b1111111111111 # instrumentation
mov word ptr [r14 + rsi], ax
and rsi, 0b1111111111111 # instrumentation
cmovnb ebx, dword ptr [r14 + rsi]
cmp bl, cl
and rdi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdi], al
and rdi, 0b1111111111111 # instrumentation
cmovno ebx, dword ptr [r14 + rdi]
cmp edi, 3
and rax, 0b1111111111000 # instrumentation
lock inc word ptr [r14 + rax]
sub ax, cx
sbb dl, al
bswap ebx
and rax, 0b1111111111111 # instrumentation
cmovz ebx, dword ptr [r14 + rax]
and al, -28
and rbx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rbx], -538885619
add dl, -57 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovnp di, word ptr [r14 + rcx]
and rbx, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rbx], dx
and rax, 0b1111111111000 # instrumentation
and ecx, 0b111 # instrumentation
lock btr dword ptr [r14 + rax], ecx
and dl, -11
mov si, cx
btr bx, cx
or bl, dl
and rdx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdx], 1 # instrumentation
xchg al, al
and rdx, 0b1111111111111 # instrumentation
cmovns rdi, qword ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
mov rax, qword ptr [r14 + rbx]
cmovs edx, eax
sub bl, dl
and rcx, 0b1111111111111 # instrumentation
neg dword ptr [r14 + rcx]
inc dil
or ax, 0b1000 # instrumentation
and al, 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv ax
xor cl, cl
and dl, al
mov dl, al
movsx rbx, cl
and rdi, 0b1111111111111 # instrumentation
cmovnb rdx, qword ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
cmovp ebx, dword ptr [r14 + rax]
and rdx, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rdx]
and rcx, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rcx], 123
and rbx, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rbx], -101
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
