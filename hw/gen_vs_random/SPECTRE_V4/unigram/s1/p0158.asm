.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], al
sub bl, dl
xor al, cl
sub ax, 25338
sbb al, cl
and rdi, 0b1111111111111 # instrumentation
cmovno si, word ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
cmovns rax, qword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
sub dword ptr [r14 + rax], ecx
cmovnle bx, dx
and rdx, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rdx], al
and rdi, 0b1111111111111 # instrumentation
cmovns esi, dword ptr [r14 + rdi]
and rax, 0b1111111111000 # instrumentation
and ebx, 0b111 # instrumentation
lock btc dword ptr [r14 + rax], ebx
movzx rdx, cl
or sil, 0b1000 # instrumentation
and sil, 0b11111000 # instrumentation
mov ax, 1 # instrumentation
idiv sil
and rcx, 0b1111111111111 # instrumentation
sub qword ptr [r14 + rcx], -99
and rbx, 0b1111111111111 # instrumentation
and di, 0b111 # instrumentation
bts word ptr [r14 + rbx], di
mul rcx
dec dil
and rsi, 0b1111111111111 # instrumentation
add bx, word ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rsi], dil
and rsi, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rsi], bl
and rbx, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rbx], 101
add cl, -62
movzx si, sil
and rcx, 0b1111111111111 # instrumentation
sbb dil, byte ptr [r14 + rcx]
sbb bx, di
btr ax, 109
and rbx, 0b1111111111000 # instrumentation
lock neg dword ptr [r14 + rbx]
sbb eax, 1002977021
and rdi, 0b1111111111111 # instrumentation
bt word ptr [r14 + rdi], 69
and rdx, 0b1111111111111 # instrumentation
cmovo dx, word ptr [r14 + rdx]
mul ecx
xchg dl, sil
and rcx, 0b1111111111000 # instrumentation
lock neg dword ptr [r14 + rcx]
cmp dl, cl
imul rdx, rax, 99
and rcx, 0b1111111111111 # instrumentation
and rsi, 0b111 # instrumentation
bts qword ptr [r14 + rcx], rsi
and rax, 0b1111111111111 # instrumentation
xor sil, byte ptr [r14 + rax]
and ebx, ecx
test al, 115
and rsi, 0b1111111111111 # instrumentation
add word ptr [r14 + rsi], bx
and rdx, 0b1111111111111 # instrumentation
mul dword ptr [r14 + rdx]
cmp rsi, 74
mov cl, -38
and rax, 0b1111111111111 # instrumentation
add dil, byte ptr [r14 + rax]
mov rcx, 51
not rsi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
