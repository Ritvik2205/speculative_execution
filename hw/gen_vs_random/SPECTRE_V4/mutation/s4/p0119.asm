.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor al, 23
and rcx, 0b1111111111111 # instrumentation
and qword ptr [r14 + rcx], rcx
or cl, 83
test edx, -38580719
xor al, cl
movzx rax, sil
sub bl, cl
and rax, 0b1111111111111 # instrumentation
cmovl edx, dword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
mul word ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
mov sil, byte ptr [r14 + rdx]
and rsi, 0b1111111111000 # instrumentation
and bx, 0b111 # instrumentation
lock btr word ptr [r14 + rsi], bx
and rcx, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rcx], -115
sub al, dl
and rsi, 0b1111111111111 # instrumentation
cmovz ax, word ptr [r14 + rsi]
add bl, -40 # instrumentation
and rcx, 0b1111111111111 # instrumentation
adc bl, byte ptr [r14 + rcx]
add al, -82
mov rbx, rdi
and rax, 0b1111111111111 # instrumentation
cmovns ebx, dword ptr [r14 + rax]
cmovz ebx, edx
and rbx, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
btc qword ptr [r14 + rbx], rdx
test rax, -405021090
and rbx, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rbx], rdx
not dx
and rsi, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rsi], 76
or cl, 1 # instrumentation
mov ax, 1 # instrumentation
div cl
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], dil
and rbx, 0b1111111111111 # instrumentation
dec byte ptr [r14 + rbx]
test al, 115
xchg dl, dl
and esi, 126
cmovnp bx, ax
xchg al, cl
and rax, 0b1111111111111 # instrumentation
mov di, word ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rbx], 6
sub bl, cl
mov bl, cl
and rax, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
bt qword ptr [r14 + rax], rdx
bswap edx
or cx, 0b1000 # instrumentation
and cl, 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv cx
cmovnbe dx, di
and rbx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rbx], cx
add dl, cl
cmp eax, -813838876
and rax, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rax], dx
and rdx, 0b1111111111111 # instrumentation
neg dword ptr [r14 + rdx]
and rdi, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rdi], -74
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
