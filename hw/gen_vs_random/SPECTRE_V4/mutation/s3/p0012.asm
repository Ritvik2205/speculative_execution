.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rbx], 7
and rax, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
bt qword ptr [r14 + rax], rdx
add bl, -40 # instrumentation
and rcx, 0b1111111111111 # instrumentation
adc bl, byte ptr [r14 + rcx]
xor al, 30
or cl, -55
not dx
test edx, -38580719
sub bl, cl
test rax, -405021090
and rax, 0b1111111111111 # instrumentation
cmovns ebx, dword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
mov di, word ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
btc qword ptr [r14 + rbx], rdx
and rcx, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rcx], -115
xor al, cl
cmovnbe dx, di
add dl, cl
mov rbx, rdi
and rbx, 0b1111111111111 # instrumentation
dec byte ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], dil
sub al, dl
and rdx, 0b1111111111111 # instrumentation
mov sil, byte ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rax], dx
and rdx, 0b1111111111111 # instrumentation
neg dword ptr [r14 + rdx]
test al, -26
sub bl, cl
and rbx, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rbx]
cmovz ebx, edx
and rsi, 0b1111111111000 # instrumentation
and bx, 0b111 # instrumentation
lock btr word ptr [r14 + rsi], bx
and rbx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rbx], cx
and rax, 0b1111111111111 # instrumentation
mul word ptr [r14 + rax]
xchg dl, dl
and rdi, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rdi], 86
and rsi, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rsi], 76
mov bl, cl
and rax, 0b1111111111111 # instrumentation
cmovl edx, dword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
cmovz ax, word ptr [r14 + rsi]
xchg al, cl
or cx, 0b1000 # instrumentation
and cl, 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv cx
or cl, 1 # instrumentation
mov ax, 1 # instrumentation
div cl
bswap edx
add al, -1
cmovnp bx, ax
movzx rax, sil
cmp eax, 64
and rbx, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rbx], rdx
and esi, 2
and rcx, 0b1111111111111 # instrumentation
and qword ptr [r14 + rcx], rcx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
