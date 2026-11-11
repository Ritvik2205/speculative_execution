.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmp ax, 28568
and rsi, 0b1111111111111 # instrumentation
sub qword ptr [r14 + rsi], 53
and rcx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rcx], 50
and rdx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rdx], cl
or ax, 0b1000000000000000 # instrumentation
bsf di, ax
and rdx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdx], sil
and rbx, 0b1111111111111 # instrumentation
and dx, word ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
sub cx, word ptr [r14 + rsi]
cmovz di, bx
adc rax, -691707152
cmp rax, 40
cmovl rdi, rax
and rcx, 0b1111111111111 # instrumentation
and ecx, 0b111 # instrumentation
btc dword ptr [r14 + rcx], ecx
and rdi, 0b1111111111111 # instrumentation
and word ptr [r14 + rdi], -59
and rsi, 0b1111111111111 # instrumentation
movzx ecx, byte ptr [r14 + rsi]
cmp esi, -84
cmovnb di, dx
cmovbe rdx, rcx
xor si, bx
and rbx, 0b1111111111111 # instrumentation
cmovnb edi, dword ptr [r14 + rbx]
xor edx, 4
imul rax, rdx
and rdx, 0b1111111111111 # instrumentation
mul word ptr [r14 + rdx]
add bl, 127 # instrumentation
and rsi, 0b1111111111111 # instrumentation
sbb dl, byte ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rcx], bl
and rdx, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
movzx esi, byte ptr [r14 + rbx]
sbb sil, -124
adc si, -74
and rsi, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rsi], 56
and rax, 0b1111111111000 # instrumentation
xchg qword ptr [r14 + rax], rbx
and rbx, 0b1111111111111 # instrumentation
cmovns di, word ptr [r14 + rbx]
xor cx, -80
cmp di, -8
test si, dx
add rdx, rsi
cmp bl, dil
and rdx, 0b1111111111111 # instrumentation
cmovnb si, word ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
add qword ptr [r14 + rdx], rdx
add rsi, rcx
add rdx, rdx
xor dl, -66
cmp bl, cl
and rbx, 0b1111111111111 # instrumentation
cmp bx, word ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
and qword ptr [r14 + rsi], 92
movsx eax, bl
and rcx, 0b1111111111111 # instrumentation
cmovnb ebx, dword ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
