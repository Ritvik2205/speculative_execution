.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or edi, 0b1000 # instrumentation
and dil, 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv edi
and rbx, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rbx], rax
or rcx, 0b1000000000000000000000000000000 # instrumentation
bsr rdx, rcx
and rcx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rcx], 2
and rbx, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rbx], 54
or rdx, rsi
add cl, -42 # instrumentation
adc al, dl
and rax, 0b1111111111111 # instrumentation
imul rbx, qword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
movzx dx, byte ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
and rsi, qword ptr [r14 + rcx]
cmovs ebx, ecx
and rax, 0b1111111111000 # instrumentation
xchg word ptr [r14 + rax], cx
imul dl
and rax, 0b1111111111111 # instrumentation
movsx rcx, word ptr [r14 + rax]
add dl, 48 # instrumentation
and rdi, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rdi], dl
bts rax, 157
and rsi, 0b1111111111111 # instrumentation
movzx eax, word ptr [r14 + rsi]
and rax, 0b1111111111000 # instrumentation
lock dec byte ptr [r14 + rax]
movzx esi, cl
xchg esi, eax
add al, 72 # instrumentation
cmovle ax, cx
add cl, -82 # instrumentation
sbb bx, dx
or edi, 0b1000 # instrumentation
and dil, 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv edi
test dil, sil
cmovp rbx, rsi
btc esi, 44
and al, dl
sub ecx, ebx
sub dl, 43
and rbx, 0b1111111111111 # instrumentation
mov esi, dword ptr [r14 + rbx]
and rsi, 0b1111111111000 # instrumentation
and rbx, 0b111 # instrumentation
lock btc qword ptr [r14 + rsi], rbx
or di, 1 # instrumentation
and dx, di # instrumentation
shr dx, 1 # instrumentation
div di
cmovp ebx, ecx
and rax, 0b1111111111111 # instrumentation
and byte ptr [r14 + rax], 100
and rdx, 0b1111111111111 # instrumentation
sbb word ptr [r14 + rdx], ax
sbb esi, 31
movzx rdi, si
mul edx
add cl, -117 # instrumentation
cmovs rax, rdi
cmovnbe rdi, rsi
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], al
and rsi, 0b1111111111111 # instrumentation
neg word ptr [r14 + rsi]
or ebx, 78
xor bl, al
movsx edi, bx
sbb cl, -104
xor al, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
