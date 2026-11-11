.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
cmp edi, dword ptr [r14 + rax]
add dl, 100 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovo rax, qword ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rdx], cl
or di, 52
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], cl
sub cl, sil
and rcx, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rcx], ax
or ecx, 1 # instrumentation
and edx, ecx # instrumentation
shr edx, 1 # instrumentation
div ecx
and rbx, 0b1111111111111 # instrumentation
movzx ebx, word ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
cmovns edi, dword ptr [r14 + rbx]
xor al, 29
sbb ecx, 42
dec rsi
and rdi, 0b1111111111111 # instrumentation
xor bl, byte ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rdx], rbx
cmovb edi, ecx
or eax, -1434249782
and rcx, 0b1111111111111 # instrumentation
mov rcx, qword ptr [r14 + rcx]
sbb esi, 42
add cl, 8 # instrumentation
adc al, sil
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], sil
and di, 50
imul cl
movzx ecx, dil
and rbx, 0b1111111111111 # instrumentation
and qword ptr [r14 + rbx], 98
and rdx, 0b1111111111111 # instrumentation
imul word ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rax], -119
test sil, 99
add al, 118
add cl, 122 # instrumentation
cmovz rdx, rdi
and rcx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rcx], 439393806
and rax, 0b1111111111111 # instrumentation
or si, word ptr [r14 + rax]
cmovb edi, ecx
add cl, -82 # instrumentation
sbb di, si
or al, 0b1000 # instrumentation
and al, 0b11111000 # instrumentation
mov ax, 1 # instrumentation
idiv al
sub dl, 43
or di, 0b1000 # instrumentation
and dil, 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv di
cmovl rdi, rdx
and cl, dil
and rcx, 0b1111111111111 # instrumentation
neg word ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
sub eax, dword ptr [r14 + rbx]
cmovnbe ebx, eax
and rcx, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rcx], bl
test al, sil
inc edi
xchg edx, edi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
