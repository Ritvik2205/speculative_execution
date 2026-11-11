.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rdx], edi
imul sil
movzx rax, bx
and rsi, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rsi], ecx
bt ax, 248
cmovnb si, bx
adc sil, 77
and rdi, 0b1111111111111 # instrumentation
inc word ptr [r14 + rdi]
add eax, edx
and rax, 0b1111111111111 # instrumentation
or word ptr [r14 + rax], 0b1000 # instrumentation
and byte ptr [r14 + rax], 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv word ptr [r14 + rax]
add dl, 77 # instrumentation
cmovno dx, bx
mul cl
and dl, dl
test bl, cl
and rax, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rax], di
adc al, 41
sub rbx, rdi
and rdx, 0b1111111111111 # instrumentation
and di, 0b111 # instrumentation
bt word ptr [r14 + rdx], di
bts dx, 26
add cl, -6 # instrumentation
cmovo rsi, rax
xchg bx, bx
xor al, 99
xor dl, sil
and rsi, 0b1111111111000 # instrumentation
lock sbb qword ptr [r14 + rsi], -98
or sil, -47
and rax, 0b1111111111111 # instrumentation
cmovnb ecx, dword ptr [r14 + rax]
and rax, 0b1111111111000 # instrumentation
lock btc dword ptr [r14 + rax], 6
add al, -7 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovns eax, dword ptr [r14 + rcx]
or bx, 1 # instrumentation
and dx, bx # instrumentation
shr dx, 1 # instrumentation
div bx
add al, -10 # instrumentation
and rbx, 0b1111111111111 # instrumentation
adc word ptr [r14 + rbx], cx
and rdx, 0b1111111111111 # instrumentation
add cl, byte ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
add rdx, qword ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
cmovp ebx, dword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
or dx, word ptr [r14 + rax]
and rbx, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rbx], 3
and rsi, 0b1111111111000 # instrumentation
and di, 0b111 # instrumentation
lock btr word ptr [r14 + rsi], di
and rcx, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rcx], 0
and rsi, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
sbb dl, byte ptr [r14 + rdx]
adc dil, 109
mul cx
adc eax, 1307735127
mul dl
add bl, dl
add dil, 105
sbb cl, cl
add bl, 127 # instrumentation
and rcx, 0b1111111111111 # instrumentation
sbb sil, byte ptr [r14 + rcx]
cmovle rdx, rcx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
