.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, -114 # instrumentation
cmovl bx, di
or dl, al
xor sil, dl
test dil, 16
cmovb ax, ax
and rcx, 0b1111111111111 # instrumentation
add al, byte ptr [r14 + rcx]
or ebx, 42
cmovb rsi, rcx
or eax, -1434249782
or di, 0b1000000000000000 # instrumentation
bsf di, di
and rsi, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rsi], al
and rbx, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rbx], cl
add dl, -39 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovnl dx, word ptr [r14 + rbx]
cmovnbe rax, rdx
xor cl, al
sub bl, 17
neg dl
add dil, dil
adc ax, 13
neg cl
add bl, -21 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovbe ecx, dword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
cmovl rcx, qword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
xor dil, byte ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rax], 87
and dx, 1
and rdi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdi], rdx
add al, 122 # instrumentation
cmovns eax, ebx
cmp bl, cl
and rsi, 0b1111111111111 # instrumentation
and word ptr [r14 + rsi], 48
or cl, 64
and rbx, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rbx], 48
sub cl, bl
xor dl, al
and rcx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rcx], 1 # instrumentation
and edx, dword ptr [r14 + rcx] # instrumentation
shr edx, 1 # instrumentation
div dword ptr [r14 + rcx]
and si, 68
and rax, 0b1111111111111 # instrumentation
cmovnle ebx, dword ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
cmovnz rbx, qword ptr [r14 + rcx]
add bl, -72
add bx, 110
cmp bx, 100
bts eax, 209
and rdx, 0b1111111111111 # instrumentation
and word ptr [r14 + rdx], dx
or al, 1 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rax], rax
cmovb cx, cx
and cx, 17
and rsi, 0b1111111111111 # instrumentation
cmovo eax, dword ptr [r14 + rsi]
sbb dl, -99
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
