.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
adc qword ptr [r14 + rdx], rax
and rcx, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rcx], dl
and rdi, 0b1111111111111 # instrumentation
inc dword ptr [r14 + rdi]
or edx, ecx
and rcx, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rcx], 4
and bl, sil
btc eax, 33
add ecx, 70
sbb ecx, 41
add al, 56 # instrumentation
cmovle rdx, rax
movzx ax, al
and rcx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rcx], dil
and rax, 0b1111111111111 # instrumentation
cmovs bx, word ptr [r14 + rax]
sub ebx, eax
and rsi, 0b1111111111111 # instrumentation
mul word ptr [r14 + rsi]
cmp sil, 88
add al, 122 # instrumentation
and rdi, 0b1111111111111 # instrumentation
and edx, 0b111 # instrumentation
bt dword ptr [r14 + rdi], edx
and rsi, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rsi], 87
and rax, 0b1111111111111 # instrumentation
and esi, 0b111 # instrumentation
bts dword ptr [r14 + rax], esi
and rbx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rbx], 0b1000 # instrumentation
and byte ptr [r14 + rbx], 0b11111000 # instrumentation
mov ax, 1 # instrumentation
idiv byte ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
inc qword ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
cmovnl rax, qword ptr [r14 + rcx]
add dl, dil
test dil, 27
cmovns edx, eax
and rdi, 0b1111111111111 # instrumentation
movsx rsi, word ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rbx], dil
add dil, 82
movzx rax, cx
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], al
and al, cl
and rax, 0b1111111111111 # instrumentation
btr word ptr [r14 + rax], 4
sub dil, dil
and rbx, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rbx], di
xor bl, al
or si, 0b1000000000000000 # instrumentation
bsf si, si
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], 0b1000 # instrumentation
and byte ptr [r14 + rsi], 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv word ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
or qword ptr [r14 + rax], 0b1000000000000000000000000000000 # instrumentation
bsf rdx, qword ptr [r14 + rax]
cmovs ax, ax
and cx, 17
and rax, 0b1111111111111 # instrumentation
add ecx, dword ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
and rdi, 0b111 # instrumentation
bt qword ptr [r14 + rdx], rdi
sbb dl, cl
cmp sil, 88
and rsi, 0b1111111111111 # instrumentation
sub eax, dword ptr [r14 + rsi]
xor sil, 56
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
