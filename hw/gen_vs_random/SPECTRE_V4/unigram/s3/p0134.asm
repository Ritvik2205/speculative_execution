.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
cmp cx, word ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
neg dword ptr [r14 + rax]
not ax
and rax, 0b1111111111111 # instrumentation
neg qword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
sub cl, byte ptr [r14 + rbx]
or dil, 81
and rbx, 0b1111111111000 # instrumentation
lock dec qword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
and rcx, 0b111 # instrumentation
bts qword ptr [r14 + rbx], rcx
and rdx, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rdx], cx
cmovz edx, ebx
and rcx, 0b1111111111111 # instrumentation
inc word ptr [r14 + rcx]
imul eax
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], sil
imul bx
and rax, 0b1111111111111 # instrumentation
imul dword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
mov word ptr [r14 + rax], 42
imul dl
or al, 0b1000 # instrumentation
and al, 0b11111000 # instrumentation
mov ax, 1 # instrumentation
idiv al
and rax, 0b1111111111111 # instrumentation
or qword ptr [r14 + rax], 75
sub edx, edi
adc edi, 71
cmp dil, bl
add cl, -117 # instrumentation
cmovs rbx, rdx
test dil, 94
and rax, 0b1111111111111 # instrumentation
and qword ptr [r14 + rax], 44
and rcx, 0b1111111111111 # instrumentation
inc word ptr [r14 + rcx]
cmp sil, sil
and rdx, 13
xchg rax, rdx
bts rdx, 78
movzx ebx, cl
or bx, -111
and rbx, 0b1111111111111 # instrumentation
cmovns ecx, dword ptr [r14 + rbx]
cmovnbe rbx, rdi
add edx, 64
mov edi, -1544998000
and rcx, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rcx], -83
xor bx, si
and rdx, 0b1111111111000 # instrumentation
and bx, 0b111 # instrumentation
lock bts word ptr [r14 + rdx], bx
or ecx, 1 # instrumentation
and edx, ecx # instrumentation
shr edx, 1 # instrumentation
div ecx
xor dl, 82
cmovnb edx, ebx
and rdx, 0b1111111111000 # instrumentation
lock neg qword ptr [r14 + rdx]
and rcx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rcx], 26
btc cx, dx
test dl, sil
and rbx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rbx], 100
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
