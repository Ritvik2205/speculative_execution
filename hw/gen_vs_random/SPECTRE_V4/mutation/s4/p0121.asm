.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111000 # instrumentation
lock inc qword ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rdx], -89
or rax, -2144083737
sub dl, bl
sub esi, ecx
and rbx, 0b1111111111111 # instrumentation
cmovno edx, dword ptr [r14 + rbx]
xchg bl, al
or dil, 0b1000 # instrumentation
and dil, 0b11111000 # instrumentation
mov ax, 1 # instrumentation
idiv dil
and rdi, 0b1111111111111 # instrumentation
add word ptr [r14 + rdi], di
and rsi, 0b1111111111111 # instrumentation
cmovnbe rcx, qword ptr [r14 + rsi]
or ax, 0b1000000000000000 # instrumentation
bsr bx, ax
and rcx, 0b1111111111111 # instrumentation
cmovs eax, dword ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
cmovnb di, word ptr [r14 + rbx]
cmovno rdi, rdx
sub bx, di
or bl, dl
imul ecx, ebx
dec rdi
add rsi, -100
and rcx, 0b1111111111111 # instrumentation
sub bl, byte ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rbx], -87
and rcx, 0b1111111111111 # instrumentation
cmp di, word ptr [r14 + rcx]
add al, 111 # instrumentation
cmovno edi, ebx
not sil
or rax, 980130592
and rcx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rcx], 0b1000 # instrumentation
and byte ptr [r14 + rcx], 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv dword ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
neg word ptr [r14 + rdx]
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], cl
and rcx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rcx], 25738
or sil, 1 # instrumentation
mov ax, 1 # instrumentation
div sil
or bl, -99
and rcx, 0b1111111111111 # instrumentation
cmovno ax, word ptr [r14 + rcx]
sub al, cl
cmp dl, cl
imul si, dx
sub dil, 35
movsx esi, si
mov cl, 14
or cl, -55
add cl, -119 # instrumentation
sbb eax, -2001663753
test eax, 1340292467
sub bl, dl
and rax, 0b1111111111000 # instrumentation
lock bts qword ptr [r14 + rax], 0
cmovnz ecx, ebx
and rdx, 0b1111111111111 # instrumentation
xor bx, word ptr [r14 + rdx]
xchg rbx, rax
btr esi, 227
or ebx, 1 # instrumentation
and edx, ebx # instrumentation
shr edx, 1 # instrumentation
div ebx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
