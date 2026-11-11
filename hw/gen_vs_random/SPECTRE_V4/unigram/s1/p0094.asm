.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
btc ecx, 201
cmp si, 109
and rcx, 0b1111111111111 # instrumentation
mov dil, byte ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rbx], rax
and rax, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rax], dil
cmovl ecx, edi
xor dil, -23
bswap eax
sub rsi, -89
cmovnb dx, si
and rsi, 0b1111111111000 # instrumentation
lock neg byte ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rdi], 31
movsx bx, dl
sbb dl, -62
and rcx, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rcx], 85
test al, al
and rax, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rax]
add al, -72 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovnp eax, dword ptr [r14 + rcx]
and rax, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rax], 1
bt esi, 83
cmovnle bx, si
and rcx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rcx], 3
movsx rsi, di
and rbx, 0b1111111111111 # instrumentation
imul bx, word ptr [r14 + rbx], 12
mov esi, edx
and rbx, 0b1111111111111 # instrumentation
imul edx, dword ptr [r14 + rbx]
sub cl, -119
and rax, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rax], 62
and rdi, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rdi], al
and rdi, 0b1111111111111 # instrumentation
bts qword ptr [r14 + rdi], 17
sbb dil, dil
and rbx, 0b1111111111111 # instrumentation
inc dword ptr [r14 + rbx]
bt ax, di
and rbx, 0b1111111111111 # instrumentation
movsx ebx, byte ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
xor word ptr [r14 + rax], di
and rdx, 0b1111111111111 # instrumentation
mov ebx, dword ptr [r14 + rdx]
cmovo ax, bx
and rbx, 0b1111111111111 # instrumentation
movsx rdi, byte ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
xor sil, dil
and rcx, 0b1111111111111 # instrumentation
cmovb rbx, qword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
or qword ptr [r14 + rax], 0b1000000000000000000000000000000 # instrumentation
bsr rsi, qword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
mov rdx, qword ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
imul edx, dword ptr [r14 + rdx], -50
cmovl ecx, edx
cmp edx, 4
sbb di, -105
cmovl ax, ax
and rax, 0b1111111111000 # instrumentation
lock dec byte ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
