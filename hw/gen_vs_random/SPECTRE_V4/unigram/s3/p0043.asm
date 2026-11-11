.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
or cl, byte ptr [r14 + rdi]
xor rsi, rax
and rax, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rax], -92
and rax, 0b1111111111111 # instrumentation
cmovnl eax, dword ptr [r14 + rax]
or di, 0b1000 # instrumentation
and dil, 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv di
and rdx, 0b1111111111111 # instrumentation
sbb word ptr [r14 + rdx], ax
xor cx, si
sub esi, ecx
add dl, -75 # instrumentation
adc dl, 12
and rcx, 0b1111111111000 # instrumentation
and dx, 0b111 # instrumentation
lock bts word ptr [r14 + rcx], dx
and rax, 0b1111111111111 # instrumentation
cmovo esi, dword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
and di, 0b111 # instrumentation
btr word ptr [r14 + rsi], di
bt eax, 84
adc sil, bl
mov dil, sil
cmp rax, -227205962
cmovo ebx, ecx
and rsi, 0b1111111111111 # instrumentation
imul dx, word ptr [r14 + rsi]
cmovnb esi, eax
and rdx, 0b1111111111111 # instrumentation
movsx rbx, byte ptr [r14 + rdx]
not rdi
cmovnb esi, ebx
sbb esi, 10
cmp al, sil
test sil, 34
xor edx, 53
xor dl, bl
cmp ax, -906
and rbx, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rbx], 98
and rdx, 0b1111111111111 # instrumentation
cmovnbe ax, word ptr [r14 + rdx]
and rax, 0b1111111111000 # instrumentation
and rdx, 0b111 # instrumentation
lock bts qword ptr [r14 + rax], rdx
and rdi, 0b1111111111111 # instrumentation
cmp bl, byte ptr [r14 + rdi]
xchg bl, sil
btc rdx, rax
add bx, 110
and rax, 0b1111111111111 # instrumentation
add dword ptr [r14 + rax], ebx
and rcx, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rcx], bx
sbb dil, 44
and rbx, 0b1111111111111 # instrumentation
cmovle di, word ptr [r14 + rbx]
xor si, 21
and rax, 0b1111111111111 # instrumentation
cmovnle edi, dword ptr [r14 + rax]
test eax, ecx
bts dx, 17
add bx, 110
test bl, dil
and rdx, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rdx], 73
add cl, 119 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovl rdx, qword ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
