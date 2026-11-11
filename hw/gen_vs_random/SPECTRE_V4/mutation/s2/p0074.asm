.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or bl, -35
and rsi, 0b1111111111111 # instrumentation
cmovnbe rcx, qword ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
cmovno ax, word ptr [r14 + rcx]
dec rdi
and rbx, 0b1111111111111 # instrumentation
cmovnb di, word ptr [r14 + rbx]
btr esi, 227
and rax, 0b1111111111000 # instrumentation
lock bts qword ptr [r14 + rax], 0
or cl, -55
sub dl, bl
sub dil, 65
imul si, dx
and rcx, 0b1111111111111 # instrumentation
cmovs eax, dword ptr [r14 + rcx]
cmp dl, cl
sub bl, dl
imul ecx, ebx
mov cl, 1
and rcx, 0b1111111111111 # instrumentation
cmp di, word ptr [r14 + rcx]
not sil
add rsi, 68
and rcx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rcx], 0b1000 # instrumentation
and byte ptr [r14 + rcx], 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv dword ptr [r14 + rcx]
or bl, dl
or rax, -387680856
sub bx, di
or rax, -943474997
sub esi, ecx
and rbx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rbx], -87
and rbx, 0b1111111111111 # instrumentation
cmovno edx, dword ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rcx], 25738
and rdi, 0b1111111111111 # instrumentation
add word ptr [r14 + rdi], di
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], cl
or ax, 0b1000000000000000 # instrumentation
bsr bx, ax
or sil, 1 # instrumentation
mov ax, 1 # instrumentation
div sil
cmovno rdi, rdx
xchg bl, al
and rcx, 0b1111111111111 # instrumentation
sub bl, byte ptr [r14 + rcx]
cmovnz ecx, ebx
and rdx, 0b1111111111111 # instrumentation
xor bx, word ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rdx], -89
xchg rbx, rax
add cl, -119 # instrumentation
sbb eax, -2001663753
movsx esi, si
and rax, 0b1111111111000 # instrumentation
lock inc qword ptr [r14 + rax]
test eax, 1340292467
or dil, 0b1000 # instrumentation
and dil, 0b11111000 # instrumentation
mov ax, 1 # instrumentation
idiv dil
add al, 111 # instrumentation
cmovno edi, ebx
sub al, cl
or ebx, 1 # instrumentation
and edx, ebx # instrumentation
shr edx, 1 # instrumentation
div ebx
and rdx, 0b1111111111111 # instrumentation
neg word ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
