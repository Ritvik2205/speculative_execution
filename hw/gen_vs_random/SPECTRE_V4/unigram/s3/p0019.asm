.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
mul esi
and rbx, 0b1111111111000 # instrumentation
xchg word ptr [r14 + rbx], dx
xchg rdx, rax
cmovnbe bx, si
xor bl, 93
and rax, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rax], 87
and rax, 0b1111111111111 # instrumentation
bt word ptr [r14 + rax], 5
or dl, 1 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rdx], rdx
cmovle eax, edx
xor rax, rcx
and rcx, 0b1111111111111 # instrumentation
cmovnb ax, word ptr [r14 + rcx]
xor dl, 49
add rax, rdx
and rbx, 0b1111111111111 # instrumentation
cmovbe dx, word ptr [r14 + rbx]
and dl, 46
and rbx, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rbx], 40
or ax, dx
add bl, bl
and rdx, 0b1111111111111 # instrumentation
cmovz ax, word ptr [r14 + rdx]
mov sil, sil
cmovnp si, bx
add rdx, 99
cmovz dx, dx
adc bl, 89
add cl, 66
dec al
sub bl, 17
or sil, 1 # instrumentation
mov ax, 1 # instrumentation
div sil
and rsi, 0b1111111111111 # instrumentation
cmovnb si, word ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
xor dl, byte ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rdx], ax
and rbx, 0b1111111111111 # instrumentation
movzx edx, word ptr [r14 + rbx]
or al, al
dec eax
cmovnp rsi, rdx
and dil, bl
sub dl, dil
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], dl
bts eax, 209
and rbx, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rbx], -29
and rsi, 0b1111111111111 # instrumentation
movzx esi, word ptr [r14 + rsi]
bts esi, 241
mov bx, -31043
add cl, al
neg al
and rcx, 0b1111111111111 # instrumentation
xor edx, dword ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
cmovnl edx, dword ptr [r14 + rdx]
cmp al, 70
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
