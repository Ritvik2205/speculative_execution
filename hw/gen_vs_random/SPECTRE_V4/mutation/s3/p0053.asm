.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111000 # instrumentation
and bx, 0b111 # instrumentation
lock btr word ptr [r14 + rsi], bx
xor al, -84
mov bl, cl
and rcx, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rcx], -115
bswap edx
xor al, cl
add al, -82
add bl, -40 # instrumentation
and rcx, 0b1111111111111 # instrumentation
adc bl, byte ptr [r14 + rcx]
cmovnbe dx, di
sub al, dl
and rbx, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
btc qword ptr [r14 + rbx], rdx
test edx, 1479885278
and rax, 0b1111111111111 # instrumentation
mov di, word ptr [r14 + rax]
cmovnp bx, ax
cmovz ebx, edx
and rax, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
bt qword ptr [r14 + rax], rdx
sub bl, cl
test rax, -269735774
and rbx, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rbx]
xchg al, cl
and rax, 0b1111111111111 # instrumentation
mul word ptr [r14 + rax]
cmp eax, 64
and rdi, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rdi], -51
and rdx, 0b1111111111111 # instrumentation
neg dword ptr [r14 + rdx]
add dl, cl
and rax, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rax], dx
or cl, 83
and rcx, 0b1111111111111 # instrumentation
and qword ptr [r14 + rcx], rcx
movzx rax, sil
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], dil
test al, 57
and rbx, 0b1111111111111 # instrumentation
dec byte ptr [r14 + rbx]
or cl, 1 # instrumentation
mov ax, 1 # instrumentation
div cl
and rsi, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rsi], 76
and rax, 0b1111111111111 # instrumentation
cmovns ebx, dword ptr [r14 + rax]
or cx, 0b1000 # instrumentation
and cl, 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv cx
and esi, 126
mov rbx, rdi
and rbx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rbx], cx
and rbx, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rbx], 2
not dx
sub bl, cl
and rax, 0b1111111111111 # instrumentation
cmovl edx, dword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
cmovz ax, word ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
mov sil, byte ptr [r14 + rdx]
xchg dl, dl
and rbx, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rbx], rdx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
