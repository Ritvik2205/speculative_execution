.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add ax, 6414
bts si, 66
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], dil
and rbx, 0b1111111111111 # instrumentation
movsx edx, byte ptr [r14 + rbx]
btr ebx, 156
sbb cl, 45
not bx
and rdi, 0b1111111111000 # instrumentation
lock dec byte ptr [r14 + rdi]
test ebx, 77
and rax, 0b1111111111111 # instrumentation
add rdi, qword ptr [r14 + rax]
and cl, 32
and rdx, 0b1111111111111 # instrumentation
movsx ebx, byte ptr [r14 + rdx]
inc si
and rax, 0b1111111111111 # instrumentation
xor edi, dword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
sub edx, dword ptr [r14 + rsi]
sub al, dil
cmp esi, -84
and rdx, 0b1111111111111 # instrumentation
cmovnp eax, dword ptr [r14 + rdx]
or eax, -646827727
adc si, -110
btc rbx, rbx
test dl, -125
and rcx, 0b1111111111111 # instrumentation
movzx ecx, word ptr [r14 + rcx]
and rdi, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rdi], esi
cmovnp dx, si
add eax, ecx
and rax, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rax], 100
bswap ebx
sub ebx, 25
add al, -64 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovp ax, word ptr [r14 + rcx]
and rdx, 0b1111111111000 # instrumentation
lock neg qword ptr [r14 + rdx]
and dl, 124
add al, -7 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovns eax, dword ptr [r14 + rcx]
and cl, cl
movsx ebx, bl
and rsi, 0b1111111111111 # instrumentation
and di, word ptr [r14 + rsi]
sub al, al
not rdx
add cl, 101 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovnle ebx, dword ptr [r14 + rdi]
add rdi, 111
and rbx, 0b1111111111111 # instrumentation
sbb bx, word ptr [r14 + rbx]
and dx, cx
and rsi, 0b1111111111111 # instrumentation
cmovnp rdx, qword ptr [r14 + rsi]
cmovz ax, dx
bswap ebx
neg rcx
adc dl, 88
and rax, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rax], 41
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
