.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or rax, -823069511
and rdx, 0b1111111111111 # instrumentation
xor bx, word ptr [r14 + rdx]
imul ecx, ebx
cmovnz ecx, ebx
xchg bl, al
sub al, cl
or sil, 1 # instrumentation
mov ax, 1 # instrumentation
div sil
not sil
or dil, 0b1000 # instrumentation
and dil, 0b11111000 # instrumentation
mov ax, 1 # instrumentation
idiv dil
movsx esi, si
and rax, 0b1111111111000 # instrumentation
lock inc qword ptr [r14 + rax]
add rsi, 44
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], cl
and rdx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rdx], -89
and rcx, 0b1111111111111 # instrumentation
cmovs eax, dword ptr [r14 + rcx]
sub dl, bl
cmovno rdi, rdx
sub bl, dl
xchg rbx, rax
or rax, -2144083737
and rax, 0b1111111111000 # instrumentation
lock bts qword ptr [r14 + rax], 1
cmp dl, cl
sub bx, di
and rbx, 0b1111111111111 # instrumentation
cmovnb di, word ptr [r14 + rbx]
sub dil, -40
or ax, 0b1000000000000000 # instrumentation
bsr bx, ax
and rcx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rcx], 0b1000 # instrumentation
and byte ptr [r14 + rcx], 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv dword ptr [r14 + rcx]
or bl, -86
btr esi, 227
or cl, -55
and rcx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rcx], 25738
and rsi, 0b1111111111111 # instrumentation
cmovnbe rcx, qword ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
cmovno ax, word ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
neg word ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rbx], -87
imul si, dx
dec rdi
and rbx, 0b1111111111111 # instrumentation
cmovno edx, dword ptr [r14 + rbx]
test eax, 1340292467
and rcx, 0b1111111111111 # instrumentation
sub bl, byte ptr [r14 + rcx]
mov cl, 14
add cl, -119 # instrumentation
sbb eax, -2001663753
or bl, dl
and rcx, 0b1111111111111 # instrumentation
cmp di, word ptr [r14 + rcx]
sub esi, ecx
or ebx, 1 # instrumentation
and edx, ebx # instrumentation
shr edx, 1 # instrumentation
div ebx
and rdi, 0b1111111111111 # instrumentation
add word ptr [r14 + rdi], di
add al, 111 # instrumentation
cmovno edi, ebx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
