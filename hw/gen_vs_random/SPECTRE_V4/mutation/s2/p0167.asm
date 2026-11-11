.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sub bl, dl
and rcx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rcx], 25738
or ax, 0b1000000000000000 # instrumentation
bsr bx, ax
sub bx, di
dec rdi
and rdx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rdx], -89
imul si, dx
movsx esi, si
imul ecx, ebx
mov cl, 1
and rbx, 0b1111111111111 # instrumentation
cmovnb di, word ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
sub bl, byte ptr [r14 + rcx]
or rax, -823069511
cmovnz ecx, ebx
or sil, 1 # instrumentation
mov ax, 1 # instrumentation
div sil
cmp dl, cl
and rdi, 0b1111111111111 # instrumentation
add word ptr [r14 + rdi], di
test eax, -651442446
add rsi, 68
or rax, 980130592
and rcx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rcx], 0b1000 # instrumentation
and byte ptr [r14 + rcx], 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv dword ptr [r14 + rcx]
xchg bl, al
or dil, 0b1000 # instrumentation
and dil, 0b11111000 # instrumentation
mov ax, 1 # instrumentation
idiv dil
and rsi, 0b1111111111111 # instrumentation
cmovnbe rcx, qword ptr [r14 + rsi]
add cl, -119 # instrumentation
sbb eax, -2001663753
and rcx, 0b1111111111111 # instrumentation
cmovs eax, dword ptr [r14 + rcx]
add al, 111 # instrumentation
cmovno edi, ebx
sub al, cl
and rcx, 0b1111111111111 # instrumentation
cmp di, word ptr [r14 + rcx]
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], cl
xchg rbx, rax
or bl, -99
or ebx, 1 # instrumentation
and edx, ebx # instrumentation
shr edx, 1 # instrumentation
div ebx
and rdx, 0b1111111111111 # instrumentation
neg word ptr [r14 + rdx]
sub dil, -11
not sil
and rdx, 0b1111111111111 # instrumentation
xor bx, word ptr [r14 + rdx]
btr esi, 227
and rbx, 0b1111111111111 # instrumentation
cmovno edx, dword ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
cmovno ax, word ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rbx], -87
sub esi, ecx
and rax, 0b1111111111000 # instrumentation
lock bts qword ptr [r14 + rax], 1
or cl, 66
and rax, 0b1111111111000 # instrumentation
lock inc qword ptr [r14 + rax]
cmovno rdi, rdx
or bl, dl
sub dl, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
