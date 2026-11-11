.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and dil, dl
and rdi, 0b1111111111111 # instrumentation
cmovs rbx, qword ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rbx], rcx
and rbx, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rbx], -29
mov dil, dil
and rdx, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rdx], 73
sbb al, bl
test al, al
and rax, 0b1111111111000 # instrumentation
lock inc qword ptr [r14 + rax]
and dl, bl
sbb sil, sil
sub dl, dl
and rdx, 0b1111111111111 # instrumentation
cmovns dx, word ptr [r14 + rdx]
btc esi, 96
and rbx, 0b1111111111111 # instrumentation
and ax, 0b111 # instrumentation
bt word ptr [r14 + rbx], ax
and rbx, 0b1111111111000 # instrumentation
lock dec byte ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
and di, 0b111 # instrumentation
bt word ptr [r14 + rcx], di
xor edx, esi
or di, 1 # instrumentation
and dx, di # instrumentation
shr dx, 1 # instrumentation
div di
cmp al, cl
cmovb ecx, eax
movzx rbx, si
and rdi, 0b1111111111111 # instrumentation
xor dl, byte ptr [r14 + rdi]
add cl, -82 # instrumentation
sbb si, ax
and di, 63
and rsi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rsi], 125
and rbx, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rbx], 82
not dx
imul edx, eax, 73
and rsi, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rsi], 3
and rbx, 0b1111111111111 # instrumentation
neg qword ptr [r14 + rbx]
cmovo rbx, rbx
and rsi, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rsi], 94
movzx si, sil
test ecx, 36
movsx rdx, bl
sbb dil, 70
and rsi, 0b1111111111111 # instrumentation
neg dword ptr [r14 + rsi]
cmovnbe rbx, rax
and rsi, 0b1111111111111 # instrumentation
neg qword ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rax], 6
or dl, 0b1000 # instrumentation
and dl, 0b11111000 # instrumentation
add dl, 11 # instrumentation
cmovbe esi, ebx
add sil, sil
and rdx, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rdx], 96
test ax, bx
mul esi
and rax, 0b1111111111111 # instrumentation
sub bl, byte ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
and rax, qword ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
