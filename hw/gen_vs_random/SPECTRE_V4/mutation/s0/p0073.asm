.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, -57 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovnp di, word ptr [r14 + rcx]
and rbx, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rbx], dx
and rbx, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rbx], -101
btr bx, cx
cmp edi, 3
and rbx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rbx], -538885619
and rax, 0b1111111111111 # instrumentation
cmovp ebx, dword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
mov rax, qword ptr [r14 + rbx]
cmp bl, cl
mov dl, al
and dl, 24
and rax, 0b1111111111000 # instrumentation
and ecx, 0b111 # instrumentation
lock btr dword ptr [r14 + rax], ecx
mov si, cx
and rbx, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rbx], -87
or ax, 0b1000 # instrumentation
and al, 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv ax
and eax, esi
xor cl, cl
sub bl, dl
and rdi, 0b1111111111111 # instrumentation
cmovnb rdx, qword ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rax], 3
and dl, al
and rax, 0b1111111111000 # instrumentation
lock inc word ptr [r14 + rax]
sub ax, cx
add dl, 29 # instrumentation
cmovnl rdi, rbx
bswap ebx
and rdx, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdi], al
sub cl, -32
and rcx, 0b1111111111111 # instrumentation
neg dword ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
cmovns rdi, qword ptr [r14 + rdx]
not di
and rdx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdx], 1 # instrumentation
xchg al, al
and rax, 0b1111111111111 # instrumentation
and qword ptr [r14 + rax], -52
and rsi, 0b1111111111111 # instrumentation
cmovnb ebx, dword ptr [r14 + rsi]
or bl, dl
cmovnz ebx, edx
and al, 82
sbb dl, al
cmovs edx, eax
and rcx, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rcx], 85
and rsi, 0b1111111111111 # instrumentation
mov word ptr [r14 + rsi], ax
inc dil
xor bl, cl
and rax, 0b1111111111111 # instrumentation
cmovz ebx, dword ptr [r14 + rax]
movsx rbx, cl
and rdi, 0b1111111111111 # instrumentation
cmovno ebx, dword ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
