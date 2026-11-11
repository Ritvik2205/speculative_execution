.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rbx], cx
and rbx, 0b1111111111111 # instrumentation
dec byte ptr [r14 + rbx]
test rax, -1395313845
cmovnp bx, ax
or cl, 1 # instrumentation
mov ax, 1 # instrumentation
div cl
sub bl, cl
xchg al, cl
and rdi, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rdi], -51
xor al, cl
or cx, 0b1000 # instrumentation
and cl, 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv cx
and rax, 0b1111111111111 # instrumentation
mov di, word ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
neg dword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
cmovns ebx, dword ptr [r14 + rax]
cmovz ebx, edx
and rbx, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rbx], rdx
test al, -26
and rdx, 0b1111111111111 # instrumentation
mov sil, byte ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rbx]
xor al, -60
add dl, cl
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], dil
sub bl, cl
and rsi, 0b1111111111111 # instrumentation
cmovz ax, word ptr [r14 + rsi]
cmp eax, 2
and rax, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rax], dx
sub al, dl
not dx
and rax, 0b1111111111111 # instrumentation
mul word ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
and qword ptr [r14 + rcx], rcx
cmovnbe dx, di
and rax, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
bt qword ptr [r14 + rax], rdx
and rbx, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
btc qword ptr [r14 + rbx], rdx
and esi, 2
mov rbx, rdi
xchg dl, dl
movzx rax, sil
and rsi, 0b1111111111000 # instrumentation
and bx, 0b111 # instrumentation
lock btr word ptr [r14 + rsi], bx
and rbx, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rbx], 6
test edx, 1479885278
add bl, -40 # instrumentation
and rcx, 0b1111111111111 # instrumentation
adc bl, byte ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rsi], 76
bswap edx
and rax, 0b1111111111111 # instrumentation
cmovl edx, dword ptr [r14 + rax]
or cl, 66
and rcx, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rcx], -115
add al, 40
mov bl, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
