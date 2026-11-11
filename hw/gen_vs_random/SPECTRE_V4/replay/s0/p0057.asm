.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111000 # instrumentation
lock bts qword ptr [r14 + rax], 0
sub bx, di
or cl, 66
or bl, -99
cmovnz ecx, ebx
xchg rbx, rax
and rcx, 0b1111111111111 # instrumentation
sub bl, byte ptr [r14 + rcx]
cmovno rdi, rdx
or sil, 1 # instrumentation
mov ax, 1 # instrumentation
div sil
add al, 111 # instrumentation
cmovno edi, ebx
and rbx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rbx], -103
sub al, cl
cmp dl, cl
imul ecx, ebx
sub esi, ecx
btr esi, 227
or rax, -2144083737
or dil, 0b1000 # instrumentation
and dil, 0b11111000 # instrumentation
mov ax, 1 # instrumentation
idiv dil
add cl, -119 # instrumentation
sbb eax, -2001663753
and rdx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rdx], -89
and rcx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rcx], 25738
xchg bl, al
and rcx, 0b1111111111111 # instrumentation
cmovno ax, word ptr [r14 + rcx]
mov cl, 1
or ax, 0b1000000000000000 # instrumentation
bsr bx, ax
or bl, dl
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], cl
or ebx, 1 # instrumentation
and edx, ebx # instrumentation
shr edx, 1 # instrumentation
div ebx
and rdx, 0b1111111111111 # instrumentation
neg word ptr [r14 + rdx]
test eax, 1947430392
and rbx, 0b1111111111111 # instrumentation
cmovno edx, dword ptr [r14 + rbx]
movsx esi, si
dec rdi
not sil
add rsi, -100
and rcx, 0b1111111111111 # instrumentation
cmp di, word ptr [r14 + rcx]
imul si, dx
and rax, 0b1111111111000 # instrumentation
lock inc qword ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
add word ptr [r14 + rdi], di
and rsi, 0b1111111111111 # instrumentation
cmovnbe rcx, qword ptr [r14 + rsi]
sub bl, dl
sub dl, bl
and rbx, 0b1111111111111 # instrumentation
cmovnb di, word ptr [r14 + rbx]
or rax, -823069511
and rdx, 0b1111111111111 # instrumentation
xor bx, word ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
cmovs eax, dword ptr [r14 + rcx]
sub dil, -11
and rcx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rcx], 0b1000 # instrumentation
and byte ptr [r14 + rcx], 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv dword ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
