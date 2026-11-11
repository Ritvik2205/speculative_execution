.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111000 # instrumentation
lock bts qword ptr [r14 + rax], 6
sub bx, di
or cl, -55
or bl, 61
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
or rax, 185991441
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
or al, -50
or bl, -86
and rbx, 0b1111111111111 # instrumentation
cmovnle rax, qword ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
sbb dword ptr [r14 + rdx], -31
mov bl, al
and rbx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rbx], edx
movsx cx, dil
mov rdi, rdi
and rcx, 0b1111111111111 # instrumentation
imul si, word ptr [r14 + rcx], -32
add al, -60 # instrumentation
cmovle rsi, rdx
mov sil, sil
and rdx, 0b1111111111000 # instrumentation
lock adc qword ptr [r14 + rdx], -25
and rcx, 0b1111111111111 # instrumentation
add bx, word ptr [r14 + rcx]
test cl, -31
xor dl, al
inc sil
and rbx, 0b1111111111111 # instrumentation
mov bl, byte ptr [r14 + rbx]
add rax, -1121139858
and rbx, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rbx], 2
cmp rbx, -66
and rax, 0b1111111111111 # instrumentation
sub dx, word ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rdi], cl
adc dil, 124
and rdi, 0b1111111111000 # instrumentation
lock inc dword ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
