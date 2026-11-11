.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rbx], -538885619
sub bl, dl
cmovs edx, eax
btr bx, cx
and rdi, 0b1111111111111 # instrumentation
cmovno ebx, dword ptr [r14 + rdi]
not di
and al, 5
and rsi, 0b1111111111111 # instrumentation
cmovnb ebx, dword ptr [r14 + rsi]
sbb dl, al
and rdi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdi], al
mov si, cx
and rax, 0b1111111111000 # instrumentation
and ecx, 0b111 # instrumentation
lock btr dword ptr [r14 + rax], ecx
bswap ebx
and rbx, 0b1111111111111 # instrumentation
mov rax, qword ptr [r14 + rbx]
and rbx, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rbx], -101
mov dl, al
and dl, -11
and rcx, 0b1111111111111 # instrumentation
neg dword ptr [r14 + rcx]
and rbx, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rbx], dx
and rdx, 0b1111111111111 # instrumentation
cmovns rdi, qword ptr [r14 + rdx]
and rcx, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rcx], 123
sub cl, -94
and rax, 0b1111111111111 # instrumentation
cmovz ebx, dword ptr [r14 + rax]
sub ax, cx
and rdx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdx], 1 # instrumentation
xchg al, al
or bl, dl
xor bl, cl
and eax, esi
inc dil
xor cl, cl
add dl, 29 # instrumentation
cmovnl rdi, rbx
and rax, 0b1111111111111 # instrumentation
and qword ptr [r14 + rax], 9
cmovnz ebx, edx
and rbx, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rbx], -87
and rax, 0b1111111111111 # instrumentation
cmovp ebx, dword ptr [r14 + rax]
add dl, -57 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovnp di, word ptr [r14 + rcx]
cmp edi, 3
or ax, 0b1000 # instrumentation
and al, 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv ax
and rdx, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rdx]
and rax, 0b1111111111000 # instrumentation
lock inc word ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rax], 3
and rdi, 0b1111111111111 # instrumentation
cmovnb rdx, qword ptr [r14 + rdi]
and dl, al
movsx rbx, cl
cmp bl, cl
and rsi, 0b1111111111111 # instrumentation
mov word ptr [r14 + rsi], ax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
