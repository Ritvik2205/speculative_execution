.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovnb di, si
xor eax, -48271836
inc ecx
mov dl, cl
and rax, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rax], -74
or al, 27
mul dil
cmovbe dx, dx
btc rbx, rdx
and rax, 0b1111111111111 # instrumentation
sbb rcx, qword ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rcx], ax
or rcx, rsi
and rdx, 0b1111111111111 # instrumentation
cmovnbe bx, word ptr [r14 + rdx]
sbb bl, al
and rbx, 0b1111111111000 # instrumentation
lock sbb qword ptr [r14 + rbx], rbx
not bl
and rcx, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rcx], ax
imul cx
test al, 57
adc al, -70
and rsi, 0b1111111111111 # instrumentation
cmovp edi, dword ptr [r14 + rsi]
xchg al, al
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], 33
inc di
xor rax, -1522567562
and rcx, 0b1111111111111 # instrumentation
sbb cl, byte ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
inc dword ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
imul rsi, qword ptr [r14 + rdi]
or cl, 83
sub sil, -35
and rdi, 0b1111111111000 # instrumentation
lock neg dword ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
movsx bx, byte ptr [r14 + rsi]
dec rsi
cmovs edx, ebx
add dil, 91 # instrumentation
adc dil, al
and rcx, 0b1111111111111 # instrumentation
neg dword ptr [r14 + rcx]
cmovl eax, ebx
and rdi, 0b1111111111111 # instrumentation
imul edi, dword ptr [r14 + rdi], 100
and dl, 124
or rdi, 0b1000000000000000000000000000000 # instrumentation
bsr rdi, rdi
and rdx, 0b1111111111111 # instrumentation
neg word ptr [r14 + rdx]
and rax, 0b1111111111000 # instrumentation
lock sbb qword ptr [r14 + rax], rbx
and cx, -117
and rcx, 0b1111111111111 # instrumentation
cmovnp esi, dword ptr [r14 + rcx]
sub cl, -94
and rdx, 0b1111111111111 # instrumentation
and word ptr [r14 + rdx], -35
add cl, 101 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovnle esi, dword ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
