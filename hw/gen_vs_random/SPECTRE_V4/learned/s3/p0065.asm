.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, 122 # instrumentation
and rcx, 0b1111111111111 # instrumentation
and esi, 0b111 # instrumentation
bt dword ptr [r14 + rcx], esi
and rbx, 0b1111111111111 # instrumentation
cmovnz ebx, dword ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rdx], eax
xor cl, -85
and rcx, 0b1111111111111 # instrumentation
cmovnle ecx, dword ptr [r14 + rcx]
xchg rdx, rcx
lea bx, qword ptr [rcx + rsi + 20]
sbb eax, 4
and cl, 58
and rdi, 0b1111111111111 # instrumentation
neg dword ptr [r14 + rdi]
movzx cx, sil
and rsi, 0b1111111111111 # instrumentation
movzx rsi, word ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
sbb dword ptr [r14 + rbx], 47
and rdi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdi], 82
and rax, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rax], dl
cmovns dx, di
btc rsi, 225
and rbx, 0b1111111111111 # instrumentation
movsx ecx, word ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rdx], eax
add cx, cx
sbb bl, bl
sbb cl, 20
sub cl, -74
and rsi, 0b1111111111111 # instrumentation
neg qword ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdx], al
sub dl, al
cmovb esi, edi
and rdi, 0b1111111111111 # instrumentation
or edi, dword ptr [r14 + rdi]
movzx rax, sil
and al, dl
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], 0b1000000000000000 # instrumentation
bsr di, word ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
movsx eax, word ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
or word ptr [r14 + rcx], 0b1000000000000000 # instrumentation
bsf bx, word ptr [r14 + rcx]
test rcx, -2118888343
bt edi, ebx
mov cl, cl
and rsi, 0b1111111111111 # instrumentation
movsx bx, byte ptr [r14 + rsi]
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], dl
bt esi, 227
bswap edi
cmp al, 19
and bl, cl
and rdx, 0b1111111111111 # instrumentation
xor sil, byte ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdi], -93
cmovl rdi, rax
movzx ecx, bl
cmovs rbx, rcx
sbb cl, 20
and esi, 55
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
