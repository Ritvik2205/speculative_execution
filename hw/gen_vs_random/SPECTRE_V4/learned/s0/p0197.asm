.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rdx], 75
test dl, 19
and rsi, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
cmovnb si, word ptr [r14 + rsi]
bts si, 30
and rsi, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rsi], ecx
movzx ax, al
and rcx, 0b1111111111111 # instrumentation
cmovbe dx, word ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdx], 567129166
and rsi, 0b1111111111000 # instrumentation
lock neg dword ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
or bl, byte ptr [r14 + rbx]
test bl, cl
setz bl
xor di, ax
xor dl, bl
or ax, -15282
or al, 109
and rdx, 0b1111111111111 # instrumentation
cmovp cx, word ptr [r14 + rdx]
add rdi, 105
imul di, bx
and rdx, 0b1111111111111 # instrumentation
adc cx, word ptr [r14 + rdx]
sbb eax, 4
xchg si, ax
sub al, 50
and rdi, 0b1111111111111 # instrumentation
cmp dx, word ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
cmovnle ebx, dword ptr [r14 + rdi]
and rbx, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rbx], 4
and rcx, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rcx], 98
and rbx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rbx], dl
xor cl, -85
and sil, al
or al, 96
imul dx
not bx
cmp dl, dil
or bl, 6
and rax, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rax], 97
and al, -127
and rsi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rsi], dil
mov bx, -31043
and rax, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rax], 6
movsx rdi, si
not cx
mov edi, -1544998000
btc dx, 119
and cl, 58
and rdi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdi], dil
movzx edx, sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
