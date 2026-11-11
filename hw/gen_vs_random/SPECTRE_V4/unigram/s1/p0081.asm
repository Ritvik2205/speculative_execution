.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add rdi, 111
bswap rax
btr dx, 245
and rsi, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rsi], 76
test di, ax
cmovnle ax, bx
and rdx, 0b1111111111111 # instrumentation
cmovnz edx, dword ptr [r14 + rdx]
and rbx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rbx], dl
imul dx, cx, 47
neg sil
btc rcx, rdi
and rax, 0b1111111111111 # instrumentation
neg byte ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
and word ptr [r14 + rdx], -35
cmovs si, cx
and rax, 0b1111111111111 # instrumentation
sub dx, word ptr [r14 + rax]
test ax, si
and rax, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rax], al
and rdx, 0b1111111111111 # instrumentation
mul dword ptr [r14 + rdx]
xor eax, 1760581269
movsx edx, ax
and rax, 0b1111111111111 # instrumentation
imul rdi, qword ptr [r14 + rax]
and rax, 0b1111111111000 # instrumentation
lock btr dword ptr [r14 + rax], 69
sub di, 9
and rdx, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rbx], esi
mov eax, edi
and rdx, 0b1111111111111 # instrumentation
neg byte ptr [r14 + rdx]
and rdx, 0b1111111111000 # instrumentation
lock adc qword ptr [r14 + rdx], rax
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], dil
sbb dil, 45
and rbx, 0b1111111111111 # instrumentation
movsx di, byte ptr [r14 + rbx]
cmovnb di, ax
and rdi, 0b1111111111000 # instrumentation
lock sub dword ptr [r14 + rdi], esi
xor rbx, -99
and rcx, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rcx], 44
and rax, 0b1111111111000 # instrumentation
lock bts qword ptr [r14 + rax], 0
and rdx, 0b1111111111111 # instrumentation
adc sil, byte ptr [r14 + rdx]
sbb dil, cl
and rsi, 0b1111111111111 # instrumentation
xor sil, dl
cmp bl, dl
and rsi, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rsi], esi
and rdx, 0b1111111111111 # instrumentation
imul edx, dword ptr [r14 + rdx]
inc eax
xor cl, dil
imul eax
and rdx, 0b1111111111111 # instrumentation
sub dl, byte ptr [r14 + rdx]
test cl, -31
and rbx, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rbx], ebx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
