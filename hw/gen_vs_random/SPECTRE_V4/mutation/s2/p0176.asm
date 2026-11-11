.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
dec byte ptr [r14 + rbx]
add dl, cl
and rsi, 0b1111111111000 # instrumentation
and bx, 0b111 # instrumentation
lock btr word ptr [r14 + rsi], bx
and rbx, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rbx], rdx
and rdx, 0b1111111111111 # instrumentation
neg dword ptr [r14 + rdx]
or cl, 1 # instrumentation
mov ax, 1 # instrumentation
div cl
xchg dl, dl
sub al, dl
and rsi, 0b1111111111111 # instrumentation
cmovz ax, word ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
btc qword ptr [r14 + rbx], rdx
bswap edx
cmovnbe dx, di
or cx, 0b1000 # instrumentation
and cl, 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv cx
test edx, 1479885278
cmp eax, -813838876
and esi, 61
xchg al, cl
cmovz ebx, edx
mov bl, cl
and rcx, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rcx], -115
mov rbx, rdi
and rax, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rax], dx
and rbx, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rbx], 2
xor al, cl
and rbx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rbx], cx
and rax, 0b1111111111111 # instrumentation
mul word ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
cmovl edx, dword ptr [r14 + rax]
or cl, 66
test rax, -269735774
movzx rax, sil
test al, 72
and rbx, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rbx]
and rdi, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rdi], 86
add al, -112
and rax, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
bt qword ptr [r14 + rax], rdx
and rax, 0b1111111111111 # instrumentation
cmovns ebx, dword ptr [r14 + rax]
sub bl, cl
and rdx, 0b1111111111111 # instrumentation
mov sil, byte ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
mov di, word ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rsi], 76
cmovnp bx, ax
xor al, -120
sub bl, cl
add bl, -40 # instrumentation
and rcx, 0b1111111111111 # instrumentation
adc bl, byte ptr [r14 + rcx]
not dx
and rcx, 0b1111111111111 # instrumentation
and qword ptr [r14 + rcx], rcx
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
