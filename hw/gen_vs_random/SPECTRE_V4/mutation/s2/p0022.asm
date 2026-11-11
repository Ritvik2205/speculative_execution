.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sub dil, -11
movsx esi, si
sub esi, ecx
cmovnz ecx, ebx
xchg rbx, rax
imul si, dx
add al, 111 # instrumentation
cmovno edi, ebx
and rbx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rbx], -103
and rax, 0b1111111111000 # instrumentation
lock bts qword ptr [r14 + rax], 0
cmp dl, cl
sub bl, dl
xchg bl, al
add cl, -119 # instrumentation
sbb eax, -2001663753
and rcx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rcx], 25738
and rbx, 0b1111111111111 # instrumentation
cmovno edx, dword ptr [r14 + rbx]
and rax, 0b1111111111000 # instrumentation
lock inc qword ptr [r14 + rax]
or rax, -387680856
imul ecx, ebx
or bl, dl
sub bx, di
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], cl
and rcx, 0b1111111111111 # instrumentation
cmovno ax, word ptr [r14 + rcx]
or bl, 61
test eax, -251558852
or cl, 12
or ebx, 1 # instrumentation
and edx, ebx # instrumentation
shr edx, 1 # instrumentation
div ebx
and rcx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rcx], 0b1000 # instrumentation
and byte ptr [r14 + rcx], 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv dword ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
sub bl, byte ptr [r14 + rcx]
or ax, 0b1000000000000000 # instrumentation
bsr bx, ax
and rcx, 0b1111111111111 # instrumentation
cmovs eax, dword ptr [r14 + rcx]
or sil, 1 # instrumentation
mov ax, 1 # instrumentation
div sil
and rdi, 0b1111111111111 # instrumentation
add word ptr [r14 + rdi], di
and rcx, 0b1111111111111 # instrumentation
cmp di, word ptr [r14 + rcx]
dec rdi
cmovno rdi, rdx
or dil, 0b1000 # instrumentation
and dil, 0b11111000 # instrumentation
mov ax, 1 # instrumentation
idiv dil
not sil
and rdx, 0b1111111111111 # instrumentation
neg word ptr [r14 + rdx]
btr esi, 227
sub dl, bl
or rax, 980130592
add rsi, 44
and rbx, 0b1111111111111 # instrumentation
cmovnb di, word ptr [r14 + rbx]
mov cl, -38
and rdx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rdx], -89
sub al, cl
and rsi, 0b1111111111111 # instrumentation
cmovnbe rcx, qword ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
xor bx, word ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
