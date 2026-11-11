.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, 66 # instrumentation
cmovp edi, edi
and rdi, 0b1111111111111 # instrumentation
cmp ebx, dword ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdi], eax
sub di, 9
and rax, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rax], 53
mov esi, ecx
and rax, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rax], edi
sub bl, cl
cmovl dx, bx
bts rbx, rcx
and cl, -128
and rcx, 0b1111111111111 # instrumentation
mul dword ptr [r14 + rcx]
cmp dl, dl
or ax, -13633
and rax, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rax], cl
sbb rax, 475459025
and rax, 0b1111111111111 # instrumentation
cmp bx, word ptr [r14 + rax]
xor cx, ax
add dl, 109
and rax, 0b1111111111111 # instrumentation
not word ptr [r14 + rax]
mov bl, dl
and rdx, 0b1111111111111 # instrumentation
cmovnb cx, word ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rcx], 0b1000 # instrumentation
and byte ptr [r14 + rcx], 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv dword ptr [r14 + rcx]
adc cl, 31
cmovp di, dx
bts ax, 159
cmovbe eax, ebx
imul ebx, eax, -112
and rax, 0b1111111111000 # instrumentation
lock neg dword ptr [r14 + rax]
test bl, -29
imul rbx, rax
and rdx, 0b1111111111111 # instrumentation
movsx eax, byte ptr [r14 + rdx]
add cl, -62
and rdi, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rdi], al
adc dl, 47
xchg esi, eax
btr dx, ax
and rdx, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rdx], rsi
and rcx, 0b1111111111000 # instrumentation
lock sbb dword ptr [r14 + rcx], ecx
add dl, 56 # instrumentation
and rsi, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rsi], 104
and rax, 0b1111111111000 # instrumentation
lock sbb dword ptr [r14 + rax], 89
sub cl, cl
and rdx, 0b1111111111111 # instrumentation
or bl, byte ptr [r14 + rdx]
mul ax
or al, al
and rbx, 0b1111111111111 # instrumentation
imul dx, word ptr [r14 + rbx], 81
cmovnle rcx, rbx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
