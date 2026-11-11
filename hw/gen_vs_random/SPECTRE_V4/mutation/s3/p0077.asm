.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
cmovz ax, word ptr [r14 + rsi]
or cl, 1 # instrumentation
mov ax, 1 # instrumentation
div cl
and rax, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rax], dx
xor al, cl
not dx
sub bl, cl
add dl, cl
cmovnbe dx, di
and rcx, 0b1111111111111 # instrumentation
and qword ptr [r14 + rcx], rcx
xchg dl, dl
sub al, dl
test edx, 1479885278
test rax, -269735774
or cl, -55
test al, 27
mov rbx, rdi
and rbx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rbx], cx
mov bl, cl
and rdx, 0b1111111111111 # instrumentation
mov sil, byte ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rbx], 7
and rax, 0b1111111111111 # instrumentation
cmovns ebx, dword ptr [r14 + rax]
movzx rax, sil
and rsi, 0b1111111111000 # instrumentation
and bx, 0b111 # instrumentation
lock btr word ptr [r14 + rsi], bx
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], dil
and rbx, 0b1111111111111 # instrumentation
dec byte ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
cmovl edx, dword ptr [r14 + rax]
bswap edx
and esi, 61
and rbx, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rbx], rdx
and rax, 0b1111111111111 # instrumentation
mov di, word ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rsi], 76
xchg al, cl
and rax, 0b1111111111111 # instrumentation
mul word ptr [r14 + rax]
add al, 40
and rbx, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
btc qword ptr [r14 + rbx], rdx
xor al, -60
and rdx, 0b1111111111111 # instrumentation
neg dword ptr [r14 + rdx]
add bl, -40 # instrumentation
and rcx, 0b1111111111111 # instrumentation
adc bl, byte ptr [r14 + rcx]
sub bl, cl
and rbx, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rbx]
or cx, 0b1000 # instrumentation
and cl, 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv cx
cmp eax, 2
and rdi, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rdi], -51
and rax, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
bt qword ptr [r14 + rax], rdx
cmovz ebx, edx
and rcx, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rcx], -115
cmovnp bx, ax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
