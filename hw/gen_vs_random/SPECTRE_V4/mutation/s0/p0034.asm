.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111000 # instrumentation
lock bts qword ptr [r14 + rax], 6
sub bx, di
or cl, 12
or bl, -80
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
or qword ptr [r14 + rbx], -87
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
and rdi, 0b1111111111000 # instrumentation
lock dec byte ptr [r14 + rdi]
cmovs rdx, rcx
and rbx, 0b1111111111111 # instrumentation
cmovnb bx, word ptr [r14 + rbx]
mul cl
movzx ax, cl
imul bl
add al, 116 # instrumentation
cmovns ebx, esi
and rcx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rcx], cx
and rax, 0b1111111111111 # instrumentation
sbb rax, qword ptr [r14 + rax]
and rax, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rax], di
cmp rax, 40
sub rdi, rax
and rdi, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rdi], dl
and rcx, 0b1111111111111 # instrumentation
cmovz ax, word ptr [r14 + rcx]
adc al, dl
mul ecx
and rdx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rdx], 3
xor eax, 1760581269
or ax, 28571
or ax, 0b1000000000000000 # instrumentation
bsf di, ax
add cl, -122 # instrumentation
cmovp bx, bx
sbb al, dl
bt ecx, 135
and rax, 0b1111111111000 # instrumentation
lock not word ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
