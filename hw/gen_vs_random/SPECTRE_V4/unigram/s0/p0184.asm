.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
sub word ptr [r14 + rcx], bx
and rdi, 0b1111111111111 # instrumentation
sbb al, byte ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rbx], 31
xor dl, 55
cmp al, cl
and rdx, 0b1111111111111 # instrumentation
and ax, 0b111 # instrumentation
bt word ptr [r14 + rdx], ax
sbb al, -47
add bl, -18 # instrumentation
mov rdi, rdx
test rbx, 56
and rdx, 0b1111111111111 # instrumentation
cmovnle si, word ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
cmovnle rdx, qword ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
and word ptr [r14 + rbx], ax
cmovnle eax, edx
or di, 0b1000 # instrumentation
and dil, 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv di
and rbx, 0b1111111111111 # instrumentation
mov esi, dword ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
sbb edx, dword ptr [r14 + rdi]
btc si, bx
sbb dl, bl
and rbx, 0b1111111111111 # instrumentation
movsx eax, word ptr [r14 + rbx]
sub al, 119
and rcx, 0b1111111111111 # instrumentation
and word ptr [r14 + rcx], dx
and bl, al
cmp sil, 88
and rdi, 0b1111111111111 # instrumentation
cmovnz edi, dword ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
or edi, dword ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rdi], 1
and dl, cl
sub cl, cl
and rsi, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rsi], ebx
cmovb ebx, eax
cmovb bx, bx
or ecx, 0b1000000000000000000000000000000 # instrumentation
bsf eax, ecx
not rdi
or rdx, 0b1000000000000000000000000000000 # instrumentation
bsf rcx, rdx
cmp al, 70
sub edi, ebx
and rbx, 0b1111111111000 # instrumentation
lock dec qword ptr [r14 + rbx]
movsx rdi, ax
sbb dl, -99
and rax, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rax], 3
and rbx, 0b1111111111000 # instrumentation
and cx, 0b111 # instrumentation
lock bts word ptr [r14 + rbx], cx
and rbx, 0b1111111111111 # instrumentation
and edx, 0b111 # instrumentation
btr dword ptr [r14 + rbx], edx
cmovo ax, dx
sbb sil, 108
test di, ax
and rcx, 0b1111111111111 # instrumentation
cmovbe dx, word ptr [r14 + rcx]
inc edi
sbb al, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
